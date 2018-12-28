(ns cljstest2.core
  (:require [cljstest2.baz]))

;;;(println "Hello World!")

(defn ^:export bar []
  (println "bar!"))
