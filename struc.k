$# LS-DYNA Keyword file created by LS-PrePost(R) V4.10.11-27Mar2024
$# Created on Apr-25-2025 (12:15:10)
*KEYWORD
*TITLE
$#                                                                         title
EMR-L 001 Simulation
$---+----1----+----2----+----3----+----4----+----5----+----6----+----7----+----8
$                                                                              $
$                                CONTROL                                       $
$                                                                              $
$---+----1----+----2----+----3----+----4----+----5----+----6----+----7----+----8
*CONTROL_TERMINATION
$   ENDTIM    ENDCYC     DTMIN    ENDENG    ENDMAS
$#  endtim    endcyc     dtmin    endeng    endmas     nosol
&t_end             0       0.0       0.01.000000E8         0
*CONTROL_TIMESTEP
$#  dtinit    tssfac      isdo    tslimt     dt2ms      lctm     erode     ms1st
       0.0       0.0         0       0.0       0.0         5         0         0
*MAT_ELASTIC
$#     mid        ro         e        pr        da        db  not used
         1&struc_rho&struc_e  &struc_nu        0.0       0.0       0.0
*MAT_RIGID
$#     mid        ro         e        pr         n    couple         m     alias
         2&struc_rho&struc_e  &struc_nu        0.0       0.0       0.0          
$#     cmo      con1      con2
       1.0         7         7
$#lco or a1        a2        a3        v1        v2        v3
       0.0       0.0       0.0       0.0       0.0       0.0
*MAT_RIGID
$#     mid        ro         e        pr         n    couple         m     alias
         3&struc_rho&struc_e  &struc_nu        0.0       0.0       0.0          
$#     cmo      con1      con2
       1.0         7         7
$#lco or a1        a2        a3        v1        v2        v3
       0.0       0.0       0.0       0.0       0.0       0.0
*PART
$ coil
$#                                                                         title
coil
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
         1         1         1         0         0         0         0         0
*SECTION_SOLID
$      sid    elform
$#   secid    elform       aet    unused    unused    unused    cohoff   gaskeit
         1         1         0                                     0.0       0.0
*PART
$ die
$#                                                                         title
workpiece
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
         2         1         2         0         0         0         0         0
*PART
$ die
$#                                                                         title
workpiece
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
         3         1         3         0         0         0         0         2
$--------1---------2---------3---------4---------5---------6---------7---------8
*DEFINE_CURVE
$ solid mechanics time step curve limiter
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
         5         0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1
                 0.0&struc_dt           
&t_end              &struc_dt           
*DEFINE_CURVE
$Strain, Stress (MPa)
$     LCID      SIDR       SFA       SFO      OFFA      OFFO    DATTYP
$--------1---------2---------3---------4---------5---------6---------7---------8
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
        15         0       1.0   1000000       0.0       0.0         0         0
$#                a1                  o1
                 0.0                97.7
               0.004             105.904
               0.008             113.737
               0.013             121.214
               0.017              128.35
               0.021             135.161
               0.025             141.659
                0.03             147.858
               0.034             153.773
               0.038             159.414
               0.042             164.796
               0.046             169.929
               0.051             174.825
               0.055             179.496
               0.059             183.952
               0.063             188.204
               0.067             192.261
               0.072             196.134
               0.076             199.832
                0.08             203.363
               0.084             206.737
               0.089             209.962
               0.093             213.046
               0.097             215.996
               0.101             218.819
               0.105             221.524
                0.11             224.116
               0.114             226.602
               0.118             228.988
               0.122             231.281
               0.127             233.485
               0.131             235.605
               0.135             237.648
               0.139             239.618
               0.143              241.52
               0.148             243.357
               0.152             245.134
               0.156             246.854
                0.16             248.522
               0.164             250.141
               0.169             251.713
               0.173             253.243
               0.177             254.732
               0.181             256.184
               0.186               257.6
                0.19             258.984
               0.194             260.337
               0.198              261.66
               0.202             262.957
               0.207             264.228
               0.211             265.475
               0.215             266.699
               0.219             267.901
               0.224             269.083
               0.228             270.245
               0.232             271.389
               0.236             272.515
                0.24             273.623
               0.245             274.715
               0.249              275.79
               0.253             276.849
               0.257             277.893
               0.262             278.921
               0.266             279.934
                0.27             280.932
               0.274             281.915
               0.278             282.884
               0.283             283.837
               0.287             284.775
               0.291             285.698
               0.295             286.607
               0.299               287.5
               0.304             288.378
               0.308             289.242
               0.312             290.089
               0.316             290.922
               0.321              291.74
               0.325             292.543
               0.329              293.33
               0.333             294.103
               0.337             294.861
               0.342             295.604
               0.346             296.334
                0.35              297.05
               0.354             297.752
               0.359             298.442
               0.363              299.12
               0.367             299.786
               0.371             300.442
               0.375             301.088
                0.38             301.726
               0.384             302.357
               0.388             302.982
               0.392             303.602
               0.396              304.22
               0.401             304.836
               0.405             305.454
               0.409             306.074
               0.413               306.7
               0.418             307.333
               0.422             307.977
               0.522             316.977
               0.622             322.977
               0.722             325.977
               0.822             326.977
               0.922             327.477
               1.022             327.577
*END
