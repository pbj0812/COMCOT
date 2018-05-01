#################################################
#                                               #
# Control file for COMCOT program (v1.7)        #
#                                               #
#################################################
#--+-----1----+----2----+----3----+----4----+----5----+----6----+----7----+----8
#===============================================:===============================
# General Parameters for Simulation             : Value Field                  |
#===============================================:===============================
#Job Description: NZ30sec bathymetry, Spherical Coordinates for code testing
 Total run time (Wall clock, seconds)           :  18000.000
 Time interval to Save Data    ( unit: sec )    :    180.0
 Output Zmax & TS (0-Max Z;1-Timeseries;2-Both) :     0
 Start Type (0-Cold start; 1-Hot start)         :     0
 Resuming Time If hot start (Seconds)           :   800.00
 Specify Min WaterDepth offshore  (meter)       :    2.00
 Initial Cond. (0:FLT,1:File,2:WM,3:LS,4:FLT+LS):     1
 Specify BC  (0-Open;1-Sponge;2-Wall;3-FACTS)   :     0
 Specify Input Z filename (for BC=3, FACTS)     : mw94_n22_nz_ha.xyt
 Specify Input U filename (for BC=3, FACTS)     : mw94_n22_nz_ua.xyt
 Specify Input V filename (for BC=3, FACTS)     : mw94_n22_nz_va.xyt

#===============================================:===============================
# Parameters for Fault Model (Segment 01)       :Values                        |
#===============================================:===============================
 No. of FLT Planes (With fault_multi.ctl if >1) :   1
 Fault Rupture Time (seconds)                   :   0.0
 Faulting Option (0: Model; 1- Data;)           :   0
 Focal Depth                             (meter):   2000.000
 Length of source area                   (meter):   40000.000
 Width of source area                    (meter):   30000.000
 Dislocation of fault plate              (meter):   7.600
 Strike direction (theta)               (degree):   22.000
 Dip  angle       (delta)               (degree):   40.000
 Slip angle       (lamda)               (degree):   90.000
 Origin of Comp. Domain (Layer 01) (Lat, degree):   0.333
 Origin of Comp. Domain (Layer 01) (Lon, degree):   0.333
 Epicenter: Latitude                    (degree):   7.00
 Epicenter: Longitude                   (degree):   7.00
 File Name of Deformation Data                  : comcot_ini.dep
 Data Format Option (0-COMCOT; 1-MOST; 2-XYZ)   :     2

#===============================================:===============================
#  Parameters for Wave Maker                    :Values                        |
#===============================================:===============================
 Wave type  ( 1:Solit, 2:given, 3:focusing )    :     1
 FileName of Customized Input (for Type=2)      : fse.dat
 Incident direction( 1:top,2:bt,3:lf,4:rt,5:ob ):     2
 Characteristic Wave Amplitude        (meter)   :     0.500
 Typical Water depth                  (meter)   :  2000.000 
 
#===============================================:===============================
#  Parameters for Submarine LS/Transient Motion :ValUes                        |
#===============================================:===============================
 X Coord. of Left/West Edge of Landlide Area    :  177.00
 X Coord. of Right/East Edge of Landlide Area   :  179.00
 Y Coord. of Bottom/South Edge of Landlide Area :  -41.00
 Y Coord. of Top/North Edge of Landlide Area    :  -39.00
 File Name of landslide Data                    : landslide_test.dat
 Data Format Option (0-Old; 1-XYT; 2-Function)  :     2
 
#===============================================:===============================
# Configurations for all grids                  :Values                        |
#===============================================:===============================
# Parameters for 1st-level grid -- layer 01     :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     0
 Coordinate System    (0:spherical, 1:cartesian):     1
 Governing Equations  (0:linear,    1:nonlinear):     0
 Grid Size  (dx, sph:minute, cart:meter)        :     3330.000
 Time step                            ( second ):     6.0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     1
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 X_start                                        :  0.000000
 X_end                                          :  1608390.00000
 Y_Start                                        :  0.000000
 Y_end                                          :  1265400.00000
 File Name of Bathymetry Data                   :  comcot_bathy.dep 
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     2
 Grid Identification Number                     :    01
 Grid Level                                     :     1
 Parent Grid's ID Number                        :    -1

#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 02    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1 
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     1
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     3
 X_start                                        :  66600.000000
 X_end                                          :  427350.000000
 Y_start                                        :  233100.000000
 Y_end                                          :  606060.000000
 FileName of Water depth data                   : layer2.dep
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     2
 Grid Identification Number                     :    02
 Grid Level                                     :     2
 Parent Grid's ID Number                        :     1

#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 03    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     1
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     3
 X_start                                        :  146520.000000
 X_end                                          :  301180.000000
 Y_start                                        :  346320.000000
 Y_end                                          :  490990.000000
 FileName of Water depth data                   : layer3.dep
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     2 
 Grid Identification Number                     :    03
 Grid Level                                     :     3
 Parent Grid's ID Number                        :    02 
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 04    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     1
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     3
 X_start                                        :    198320.000000
 X_end                                          :    243336.666667
 Y_start                                        :    372960.000000
 Y_end                                          :    421183.333333
 FileName of Water depth data                   : layer4.dep
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     2 
 Grid Identification Number                     :    04
 Grid Level                                     :     4
 Parent Grid's ID number                        :    03 
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 05    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     1
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     3
 X_start                                        :    208310.000000
 X_end                                          :    220931.111111
 Y_start                                        :    386280.000000
 Y_end                                          :    398284.444444
 FileName of Water depth data                   : layer5.dep
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     2 
 Grid Identification Number                     :    05
 Grid Level                                     :     5
 Parent Grid's ID number                        :    04 
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 06    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     1
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     3
 X_start                                        :   217560.000000
 X_end                                          :   221479.259259
 Y_start                                        :   335918.888889
 Y_end                                          :   340125.925926
 FileName of Water depth data                   : layer6.dep
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     2 
 Grid Identification Number                     :    06
 Grid Level                                     :     6
 Parent Grid's ID number                        :    05
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 07    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     1
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     5
 X_start                                        :   140.
 X_end                                          :   233.
 Y_start                                        :   143.
 Y_end                                          :   310.
 FileName of Water depth data                   : layer32.dep
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     0 
 Grid Identification Number                     :    07
 Grid Level                                     :     2
 Parent Grid's ID number                        :    01 

#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 08    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Use Bottom friction ?(only cart,nonlin,0:y,1:n):     1
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     5
 X_start                                        :   274.
 X_end                                          :   329.
 Y_start                                        :   143.
 Y_end                                          :   235.
 FileName of Water depth data                   : layer33.dep
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     0 
 Grid Identification Number                     :    08
 Grid Level                                     :     2
 Parent Grid's ID number                        :    01
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 09    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     1
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     5
 X_start                                        :    41.
 X_end                                          :    60.
 Y_start                                        :    41.
 Y_end                                          :    60.
 FileName of Water depth data                   : layer34.dep
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     0 
 Grid Identification Number                     :    09
 Grid Level                                     :     2
 Parent Grid's ID number                        :    01
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 10    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     1
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     5
 X_start                                        :   129.
 X_end                                          :   247.
 Y_start                                        :   471.
 Y_end                                          :   588.
 FileName of Water depth data                   : layer41.dep
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     0 
 Grid Identification Number                     :    10
 Grid Level                                     :     2
 Parent Grid's ID number                        :    01
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 11    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     1
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     5
 X_start                                        :   858.
 X_end                                          :   968.
 Y_start                                        :   246.
 Y_end                                          :   388.
 FileName of Water depth data                   : layer42.dep
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     0 
 Grid Identification Number                     :    11
 Grid Level                                     :     2
 Parent Grid's ID number                        :    01
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 12    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     1
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     5
 X_start                                        :  2154.
 X_end                                          :  2258.
 Y_start                                        :   671.
 Y_end                                          :   825.
 FileName of Water depth data                   : layer43.dep
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     0 
 Grid Identification Number                     :    12
 Grid Level                                     :     2
 Parent Grid's ID number                        :    01
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 13    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     1
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     5
 X_start                                        :    41.
 X_end                                          :    60.
 Y_start                                        :    41.
 Y_end                                          :    60.
 FileName of Water depth data                   : layer44.dep
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     0 
 Grid Identification Number                     :    13
 Grid Level                                     :     2
 Parent Grid's ID number                        :    01
 
