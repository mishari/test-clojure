(ns packt-clj.tennis

  (:require

   [clojure.data.csv :as csv]

   [clojure.java.io :as io]

   [semantic-csv.core :as sc]))

(defn first-match [csv]

  (with-open [r (io/reader csv)]

    (->> (csv/read-csv r)

         sc/mappify

         first)))