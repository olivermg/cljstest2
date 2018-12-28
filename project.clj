(defproject cljstest2 "0.0.1-SNAPSHOT"
  :min-lein-version "2.8.1"
  :dependencies [[org.clojure/clojure "1.10.0"]
                 [org.clojure/clojurescript "1.10.439"]]
  :plugins [[lein-cljsbuild "1.1.7"]]
  :cljsbuild {:builds
              [{:id "cljstest2"
                :source-paths ["src"]
                :compiler {:target :nodejs
                           :output-dir "out"
                           :output-to "lib_compiled/cljstest2.js"
                           :optimizations :none
                           :main "cljstest2.core"
                           :verbose true}}]})
