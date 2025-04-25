$# LS-DYNA Keyword file created by LS-PrePost(R) V4.10.11-27Mar2024
$# Created on Apr-25-2025 (12:15:10)
$# UNITS: (g/mm/s) 
*KEYWORD
*TITLE
$#                                                                         title
EMR-L 001 Simulation
$---+----1----+----2----+----3----+----4----+----5----+----6----+----7----+----8
$                                                                              $
$                             EM CONTROL                                       $
$                                                                              $
$---+----1----+----2----+----3----+----4----+----5----+----6----+----7----+----8
*EM_CONTROL
$--------1---------2---------3---------4---------5---------6---------7---------8
$    emsol    
         1        
*EM_CONTROL_CONTACT
$--------1---------2---------3---------4---------5---------6---------7---------8
$   EMcont
         1
*EM_CONTROL_TIMESTEP
$#  tstype    dtcons      lcid                            
         1    &em_dt
*EM_CIRCUIT_ROGO
$#   rogid     setid   settype    curtyp
         4         4         1         1  
$---+----1----+----2----+----3----+----4----+----5----+----6----+----7----+----8
$                                                                              $
$                             EM CIRCUIT                                       $
$                                                                              $
$---+----1----+----2----+----3----+----4----+----5----+----6----+----7----+----8
*EM_CIRCUIT
$--------1---------2---------3---------4---------5---------6---------7---------8
$   circid  circtype      lcid      
         1         1         4
$ ssidCurr ssidVltin ssidVltOt    partID
         4         1         2
$---+----1----+----2----+----3----+----4----+----5----+----6----+----7----+----8
$                                                                              $
$                             EM MAT and EOS                                   $
$                                                                              $
$---+----1----+----2----+----3----+----4----+----5----+----6----+----7----+----8
*EM_MAT_001
$   em_mid     mtype     sigma     eosId skinDepth           
         1         2  &em_cond
*EM_MAT_001    
         2         2  &em_cond
*EM_MAT_001   
         3         2  &em_cond 
$---+----1----+----2----+----3----+----4----+----5----+----6----+----7----+----8
$                                                                              $
$                             EM SOLVER                                        $
$                                                                              $
$---+----1----+----2----+----3----+----4----+----5----+----6----+----7----+----8
*EM_SOLVER_BEMMAT
$#   matid                                                                reltol
         1                                                                  1e-6 
*EM_SOLVER_BEMMAT
$#   matid                                                                reltol
         2                                                                  1e-6      
*EM_SOLVER_BEM
$#  reltol     maxit     stype    precon    uselas  ncyclbem
      1e-6      1000         2         2         1&em_bemmtx
*EM_SOLVER_FEM
$#  reltol     maxit     stype    precon    uselas  ncyclbem
      1e-3      1000         1         1         1&em_femmtx
$---+----1----+----2----+----3----+----4----+----5----+----6----+----7----+----8
$                                                                              $
$                             EM OUTPUT                                        $
$                                                                              $
$---+----1----+----2----+----3----+----4----+----5----+----6----+----7----+----8 
*EM_OUTPUT
$     matS      matF      solS      solF      mesh
         2         2         2         2         0  
*EM_DATABASE_GLOBALENERGY
$#   outlv
         1
*END