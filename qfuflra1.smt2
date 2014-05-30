(set-logic QF_UFLRA)
(set-info :source | Example formula in SMT-LIB 2.0 |)
(set-info :smt-lib-version 2.0)
(set-info :status unsat)
(declare-fun f (Real) Real)
(declare-fun q (Real) Bool)
(declare-fun a () Real)
(declare-fun b () Real)
(declare-fun x () Real)
(assert
  (and
    (<= a b)
    (<= b (+ a x)) (= x 0)
    (or (not (= (f a) (f b))) (and (q a) (not (q (+ b x)))))))
(check-sat)
(exit)

