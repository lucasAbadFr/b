/*============================================================================*
 *      ___                                                                   *
 *     | _ )                THE B PROGRAMMING LANGUAGE                        *
 *     | _ \                   TSODING'S B COMPILER                           *
 *     |___/                        MIT LICENCE                               *
 *                                                                            *
 *============================================================================*
 *
 **** DESCRIPTION ***
 *
 *     Test the B compiler's diagnostics as a black-box system. The purpose is
 *     to validate that meaningful and helpful error messages are produced in
 *     response to incorrect source code, based on examples from the B Language
 *     Reference Manual.
 *
 *     This test suite is written in Rust without using Cargo. It aims to
 *     exercise and verify diagnostic output from the B compiler binary.
 *     This file itself does not adhere to the Crust formatting rules, as it
 *     operates more like a high-level test environment than part of the
 *     compiler internals.
 *
 *     WARNING: These tests are intended to be run on Linux only (for now).
 *
 *     REFERENCE: 
 *         - https://www.thinkage.ca/gcos/expl/b/manu/manu.html#AppendixC
 *
 **** COMMENTS ***
 *
 *     The comparison of outputs is currently done by raw string equality,
 *     which is fragile for the reasons listed above (formatting, platform
 *     differences). However, it is a good first step and will be refined over
 *     time.
 *
 *     In the future, diagnostics could be categorized more extensively to aid
 *     clarity and coverage.
 *     For example:
 *
 *         tests/diagnostics/b_codes/
 *             01-001_missing_curly_brace_1.b
 *             01-002_missing_curly_brace_2.b
 *             01-010_missing_semi_colon_1.b
 *             ...
 *
 *     Each file would start with a header comment describing the test intent
 *     and context.
 *
 *     Implementing and maintaining these tests should also offer valuable
 *     insights into how diagnostics work and how they could be improved.
 *
 ***** ROADMAP (ideas) ***
 *
 *     1. Cover at least one example for each diagnostic listed in the B
 *        Reference Manual.
 *     2. Improve the comparison system:
 *          - Normalize newlines (`\n` vs `\r\n`)
 *          - Strip ANSI color codes
 *          - Make path formats (relative vs absolute) consistent
 *     3. Use pattern-based or partial matching instead of full string equality.
 *
 */

/*
 * TMP: leave this here before integrating with Makefile
 * 
 *     rustc --test tests/diagnostics/diagnostics.rs -o build/test_diagnostics && ./build/test_diagnostics
 */ 


use std::process::Command;
use std::process::Output;
use std::ffi::OsStr;

pub fn run_compiler<S: AsRef<OsStr>>(args: &[S]) -> String {
    let output: Output = Command::new("./build/b")
        .args(args)
        .output()
        .expect("Failed to run ./build/b");

    let stdout = String::from_utf8_lossy(&output.stdout);
    let stderr = String::from_utf8_lossy(&output.stderr);

    format!("{}{}", stdout, stderr).trim().to_string()
}

#[test]
fn invoke_compiler_help() {
    let expected = "\
Usage: ./build/b [OPTIONS] <inputs...> [--] [run arguments]
OPTIONS:
    -t
        Compilation target. Pass \"list\" to get the list of available targets.
        Default: fasm-x86_64-linux
    -o
        Output path
    -run
        Run the compiled program (if applicable for the target)
    -help
        Print this help message
    -L
        Append a flag to the linker of the target platform
ERROR: no input is provided";

    let output = run_compiler::<&str>(&[]);

    assert_eq!(output, expected.to_string());
}

#[test]
fn test_01_syntax_error() {
    let expected = "tests/diagnostics/b_codes/01_syntax_error.b:24:17: Expected start of a primary expression but got end of file";

    let output = run_compiler::<&str>(&["tests/diagnostics/b_codes/01_syntax_error.b"]);

    assert_eq!(output, expected.to_string());
}

#[test]
fn test_02_undefined_identifier() {
    let expected = "tests/diagnostics/b_codes/02_undefined_identifier.b:18:5: ERROR: could not find name `d`";

    let output = run_compiler::<&str>(&["tests/diagnostics/b_codes/02_undefined_identifier.b"]);

    assert_eq!(output, expected.to_string());
}