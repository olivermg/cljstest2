(ns cljstest2.baz)

(defn fun1 [x y]
  (println "fun1!" x y)
  (+ x y))

(defn ^:export fun2 [x]
  (let [res (fun1 x 10)]
    (println "fun2!" x res)
    res))
