;;
;; pddl file for the aips2000 planning competition
;; based on the data generated by the airport simulator astras.
;;

;; author: sebastian trueg thisshouldbethecurrentdateandtime :(
;; created with segmentsplitterairportexporter 0.1 by sebastian trueg <trueg@informatik.uni-freiburg.de>
;;



(define (problem problem_x)

(:domain airport)

(:objects

      ;; the airplanes (1)
      airplane_cfbeg - airplane

      ;; the airplanetypes (1)
      medium - airplanetype

      ;; the directions (2)
      north
      south - direction

      ;; the segments (17)
      seg_pp_0_60
      seg_ppdoor_0_40
      seg_tww1_0_200
      seg_twe1_0_200
      seg_tww2_0_50
      seg_tww3_0_50
      seg_tww4_0_50
      seg_rww_0_50
      seg_rwtw1_0_10
      seg_rw_0_400
      seg_rwe_0_50
      seg_twe4_0_50
      seg_rwte1_0_10
      seg_twe3_0_50
      seg_twe2_0_50
      seg_rwte2_0_10
      seg_rwtw2_0_10 - segment
)

(:init

      (at-segment airplane_cfbeg seg_rw_0_400)

      (blocked seg_rw_0_400 airplane_cfbeg)
      (blocked seg_rwe_0_50 airplane_cfbeg)

      (can-move seg_pp_0_60 seg_ppdoor_0_40 north)
      (can-move seg_ppdoor_0_40 seg_tww1_0_200 north)
      (can-move seg_tww1_0_200 seg_twe1_0_200 north)
      (can-move seg_twe1_0_200 seg_twe2_0_50 south)
      (can-move seg_twe2_0_50 seg_twe3_0_50 south)
      (can-move seg_twe3_0_50 seg_twe4_0_50 south)
      (can-move seg_twe4_0_50 seg_rwe_0_50 south)
      (can-move seg_rwe_0_50 seg_rw_0_400 south)
      (can-move seg_rw_0_400 seg_rww_0_50 south)
      (can-move seg_rww_0_50 seg_tww4_0_50 south)
      (can-move seg_tww4_0_50 seg_tww3_0_50 north)
      (can-move seg_tww3_0_50 seg_tww2_0_50 north)
      (can-move seg_tww2_0_50 seg_tww1_0_200 north)
      (can-move seg_tww1_0_200 seg_ppdoor_0_40 north)
      (can-move seg_ppdoor_0_40 seg_pp_0_60 south)


      (facing airplane_cfbeg south)

      (has-type airplane_cfbeg medium)

      (is-blocked seg_ppdoor_0_40 medium seg_pp_0_60 south)
      (is-blocked seg_pp_0_60 medium seg_ppdoor_0_40 north)
      (is-blocked seg_tww1_0_200 medium seg_ppdoor_0_40 south)
      (is-blocked seg_twe1_0_200 medium seg_ppdoor_0_40 south)
      (is-blocked seg_tww2_0_50 medium seg_tww1_0_200 north)
      (is-blocked seg_ppdoor_0_40 medium seg_tww1_0_200 south)
      (is-blocked seg_twe1_0_200 medium seg_tww1_0_200 south)
      (is-blocked seg_twe2_0_50 medium seg_twe1_0_200 north)
      (is-blocked seg_ppdoor_0_40 medium seg_twe1_0_200 south)
      (is-blocked seg_tww1_0_200 medium seg_twe1_0_200 south)
      (is-blocked seg_tww3_0_50 medium seg_tww2_0_50 north)
      (is-blocked seg_tww1_0_200 medium seg_tww2_0_50 south)
      (is-blocked seg_tww4_0_50 medium seg_tww3_0_50 north)
      (is-blocked seg_tww2_0_50 medium seg_tww3_0_50 south)
      (is-blocked seg_rww_0_50 medium seg_tww4_0_50 north)
      (is-blocked seg_rwtw1_0_10 medium seg_tww4_0_50 north)
      (is-blocked seg_tww3_0_50 medium seg_tww4_0_50 south)
      (is-blocked seg_rwte1_0_10 medium seg_twe4_0_50 north)
      (is-blocked seg_rwe_0_50 medium seg_twe4_0_50 north)
      (is-blocked seg_twe3_0_50 medium seg_twe4_0_50 south)
      (is-blocked seg_twe4_0_50 medium seg_twe3_0_50 north)
      (is-blocked seg_twe2_0_50 medium seg_twe3_0_50 south)
      (is-blocked seg_twe3_0_50 medium seg_twe2_0_50 north)
      (is-blocked seg_twe1_0_200 medium seg_twe2_0_50 south)
      (is-blocked seg_tww4_0_50 medium seg_rww_0_50 north)
      (is-blocked seg_rww_0_50 medium seg_rw_0_400 north)
      (is-blocked seg_rww_0_50 medium seg_rwe_0_50 north)
      (is-blocked seg_rw_0_400 medium seg_rwe_0_50 north)
      (is-blocked seg_twe4_0_50 medium seg_rwe_0_50 south)
      (is-blocked seg_rwe_0_50 medium seg_rw_0_400 south)
      (is-blocked seg_rwe_0_50 medium seg_rww_0_50 south)
      (is-blocked seg_rw_0_400 medium seg_rww_0_50 south)

      (is-moving airplane_cfbeg)


      (is-start-runway seg_rww_0_50 north)
      (is-start-runway seg_rwe_0_50 south)



      (move-dir seg_pp_0_60 seg_ppdoor_0_40 north)
      (move-dir seg_ppdoor_0_40 seg_tww1_0_200 south)
      (move-dir seg_tww1_0_200 seg_twe1_0_200 south)
      (move-dir seg_twe1_0_200 seg_twe2_0_50 south)
      (move-dir seg_twe2_0_50 seg_twe3_0_50 south)
      (move-dir seg_twe3_0_50 seg_twe4_0_50 south)
      (move-dir seg_twe4_0_50 seg_rwe_0_50 south)
      (move-dir seg_rwe_0_50 seg_rw_0_400 south)
      (move-dir seg_rw_0_400 seg_rww_0_50 south)
      (move-dir seg_rww_0_50 seg_tww4_0_50 north)
      (move-dir seg_tww4_0_50 seg_tww3_0_50 north)
      (move-dir seg_tww3_0_50 seg_tww2_0_50 north)
      (move-dir seg_tww2_0_50 seg_tww1_0_200 north)
      (move-dir seg_tww1_0_200 seg_ppdoor_0_40 south)
      (move-dir seg_ppdoor_0_40 seg_pp_0_60 south)

      (occupied seg_rw_0_400)
)

(:goal
      (and



            (is-parked airplane_cfbeg seg_pp_0_60)
      )
)
)
