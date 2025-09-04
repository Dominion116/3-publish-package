#[test_only]
module hello_sui::all_tests;

use hello_sui::basic_functions;
use hello_sui::variables_and_ptypes;

// Tests for variables_and_ptypes module
#[test]
fun test_variables_main() {
    variables_and_ptypes::main();
}

// Tests for basic_functions module
#[test]
fun test_basic_calculate() {
    let result = basic_functions::calculate(10, 5);
    assert!(result == 15, 1); 
}
