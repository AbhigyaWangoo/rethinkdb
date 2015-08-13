// Autogenerated by metajava.py.
// Do not edit this file directly.
// The template for this file is located at:
// ../../../../../../../../templates/AstSubclass.java
package com.rethinkdb.ast.gen;

import com.rethinkdb.model.Arguments;
import com.rethinkdb.model.OptArgs;
import com.rethinkdb.ast.ReqlAst;
import com.rethinkdb.proto.TermType;


public class Ceil extends ReqlQuery {


    public Ceil(java.lang.Object arg) {
        this(new Arguments(arg), null);
    }
    public Ceil(Arguments args, OptArgs optargs) {
        this(null, args, optargs);
    }
    public Ceil(ReqlAst prev, Arguments args, OptArgs optargs) {
        this(prev, TermType.CEIL, args, optargs);
    }
    protected Ceil(ReqlAst previous, TermType termType, Arguments args, OptArgs optargs){
        super(previous, termType, args, optargs);
    }


    /* Static factories */
    public static Ceil fromArgs(java.lang.Object... args){
        return new Ceil(new Arguments(args), null);
    }


}