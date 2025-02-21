module bet_fund::message {
    use std::string::{String, utf8};
    use std::debug::print;

    struct MoveResource has key {
        string: String
    }

    public entry fun greeting(caller: &signer) {
        let greeting: String = utf8(b"Hello Bet Fund");
        print(&greeting);
        move_to(caller, MoveResource {
            string: greeting
        });
    }

    #[test(caller = @0x1)]
    fun test_greeting(caller: &signer) {
        greeting(caller);
    }
}