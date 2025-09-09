#[test_only]
module hello_sui::all_tests;

use hello_sui::basic_functions;
use hello_sui::variables_and_ptypes;
use hello_sui::structs;

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

#[test]
fun test_get_student() {
    let student = structs::create_student(18, true, 90, 85);
    let (age, isMale, math, eng) = structs::get_student(student);

    assert!(age == 18, 0);
    assert!(isMale == true, 1);
    assert!(math == 90, 2);
    assert!(eng == 85, 3);
}
