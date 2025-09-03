module hello_sui::hello_sui{

    use sui::event;
    use std::string::{String, utf8};
    use std::debug;

    public struct HelloEvent has copy, drop {
        message: String
    }

    public fun hello() {
        let hello_event = HelloEvent {
           message:utf8(b"Hello there!")
        };

        event::emit(hello_event);
    }
}

module hello_sui::variables_and_ptypes {

    public fun main() {
        let num1 : u8 = 8;
        let is_alive : bool = true;
        let num2 : u16 = 500;
    }
    debug::print()

}



