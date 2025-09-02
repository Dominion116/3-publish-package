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



