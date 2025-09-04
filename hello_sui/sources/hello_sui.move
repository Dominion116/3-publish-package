module hello_sui::hello_sui{

    use sui::event;
    use std::string::{String, utf8};

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

    use std::debug;

    public fun main() {
        let num1 : u8 = 8;
        let mut _is_alive : bool = true;
        let num2 : u16 = 500;
        let add = (num1 as u16) + num2;


        debug::print(&num1);
        debug::print(&_is_alive);
        debug::print(&num2);
        debug::print(&add);
    }
}

module hello_sui::basic_functions {

    public fun add(num3: u64, num4: u64) : u64 {
        let addition = num3 + num4;
        addition
    }

    public fun calculate(a: u64, b: u64) : u64 {
        let answer = add(a, b);
        answer
    }
}



