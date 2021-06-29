actor {
    public type Expression = {
        #const : Int;
        #add : (Expression, Expression);
        #subs : (Expression, Expression);
        #mul : (Expression, Expression);
        #div : (Expression, Expression);
    };

    func eval(exp : Expression) : Int {
        switch(exp) {
            case (#const(n)) n;
            case (#add(e1, e2)) eval(e1) + eval(e2);
            case (#subs(e1, e2)) eval(e1) - eval(e2);
            case (#mul(e1, e2)) eval(e1) * eval(e2);
            case (#div(e1, e2)) eval(e1) / eval(e2);
        };
    };

    public func calc(exp : Expression) : async Int {
        return eval(exp);
    };
}