import Principal "mo:base/Principal";
import HashMap "mo:base/HashMap";

actor Token {
    var owner: Principal = Principal.fromText("lgmzr-vzxkm-q4cbn-macxu-mrqyy-epalq-zecru-hxmf4-caob2-t4x6j-tae");
    var totalSupply: Nat = 1 * (10 ** 9);
    var symbol : Text = "QROX";

    var balances = HashMap.HashMap<Principal, Nat>(1, Principal.equal, Principal.hash);
    balances.put(owner, totalSupply);

    public query func balanceOf(who: Principal) : async Nat {

        let balance : Nat = switch (balances.get(who)) {
            case null 0;
            case (?result) result;
        };
        return balance;
    };

    public query func getSymbol() : async Text {
        return symbol;
    };
};