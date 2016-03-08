;version recursive
(def fib [n]
    (if (= n 1) 0
        (if (= n 2) 1
            (+ (fib (- n 1))
               (fib (- n 2))))))


;version iterative
(defn fib2 [n-2 n-1 i n]
    if (= i n)
        (n -1)
        (fib2 n -1 (+' n-1 n-2) (inc i)n))

(defn fib [n]
    (if (=n 1) 0
    (if (=n 2) 1
        (fib2 0 1 2 n))))