#[test_only]
module hello_sui::variables_and_ptypes_tests;

use hello_sui::variables_and_ptypes;

#[test]
public fun test_hello_sui() {
    variables_and_ptypes::main();
}
