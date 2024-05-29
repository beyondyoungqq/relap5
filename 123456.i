*=========================================================================*
*title card   
*=========================================================================*
*间歇沸腾诱发的自然循环流动不稳定性
*=========================================================================*
* problem type and option
*=========================================================================*
*cardno  problem type   option
100        new          transnt
*=========================================================================*
*cardno   inp-chk   or   run
101             run                            
*=========================================================================*
*cardno    input units  output units
102          si               si
*=========================================================================*
*          cpu time remaining card
*=========================================================================*
*cardno    time1        time2        cpu-time
105        1.0          2.0          500000.0
*=========================================================================*
*          time step control cards
*=========================================================================* 
*cardno    end time   min.dt    max.dt  control   minor.ed major.ed restart
201        5000.00   1.0e-12   0.1     00003      1        5000      1000 
*=========================================================================* 
*plot   variables
*=========================================================================*
*temperature
20300010  tempf,102010000,1
20300020  tempf,104100000,1
20300030  tempf,118020000,1
20300040  tempf,120020000,1
20300050  mflowj,102010000,1
20300060  voidg,100030000,1
20300051  cntrlvar,123,1
20300070  p,110050000,1
*=========================================================================*
*小编辑
*=========================================================================*
301  tempf 102020000
302  cntrlvar  123
303  voidg 100030000
*=========================================================================*
*加热管段
*=========================================================================*
*cardno     name         type               
1000000     "pipe100"    pipe   
*cardno     no.vols.            
1000001     5                   
*cardno     vol.area     vol.no.
1000102     3.14e-4      5      
*cardno     length       vol.no.
1000301     0.26         5      
*cardno     volume       vol.no.
1000401     0.0          5      
*cardno     horz.angle   vol.no.
1000501     0.0          5      
*cardno     vert.angle   vol.no.
1000601     90.0         5      
*cardno     e.change     vol.no.
1000701     0.26         5      
*cardno     roughness    hyd.dia     vol.no.          
1000801     0.0015         0.0         5                
*cardno     f.loss       r.loss      jun.no.          
1000901     0.0          0.0         4                
*cardno     tlpvbfe      vol.no.                      
1001001     0000000      5                            
*cardno     jefvcahs     jun.no.                      
1001101     00000000     4                            
*cardno     ctl          pre         temp                          vol.no.
1001201     003          167713.7    293.0       0.0   0.0   0.0     1
1001202     003          165163.1    293.0       0.0   0.0   0.0     2
1001203     003          162612.5    293.0       0.0   0.0   0.0     3
1001204     003          160061.9    293.0       0.0   0.0   0.0     4
1001205     003          157511.3    293.0       0.0   0.0   0.0     5
*cardno     ini.clt                                                  
1001300     1                                                        
*cardno     f.flowrate   g.flowrate  i.flowrate  jun.no.               
1001301     0.02          0.0         0.0         4                   
*=========================================================================*
*连接处101j
*=========================================================================*
*cardno    name          type                                              
1010000    "sjunl101"    sngljun                                              
*cardno    from          to           area    f.loss   r.loss  jefvcahs 
1010101    100010000     102000000    0.0     0.0       0.0    00000000 
*cardno    ini.ctl       l.flowrate   g.flowrate   i.flowrate                
1010201    1             0.02          0.0          0.0                         
*=========================================================================*
*水平管段102 
*=========================================================================*
*cardno     name          type                                       
1020000     "pipe102"     pipe                                       
*cardno     no.vols.                                                 
1020001     5                     
*cardno     vol.area      vol.no. 
1020102     3.14e-4       5       
*cardno     length        vol.no. 
1020301     0.09          5       
*cardno     volume        vol.no. 
1020401     0.0           5       
*cardno     horz.angle    vol.no. 
1020501     180.0         5       
*cardno     vert.angle    vol.no. 
1020601     0.0           5                                          
*cardno     e.change      vol.no.                                    
1020701     0.0           5                            
*cardno     roughness     hyd.dia     vol.no.            
1020801     0.1e-5        0.0         5                  
*cardno     f.loss        r.loss      jun.no.            
1020901     0.0           0.0         4                  
*cardno     tlpvbfe       vol.no.                                      
1021001     0000000       5                                            
*cardno     jefvcahs      jun.no.                                      
1021101     00000000      4                         
*cardno     ctl           pre         temp                        vol.no.
1021201     003           156236.0    293.0    0.0   0.0   0.0    5
*cardno     ini.clt       
1021300     1             
*cardno     f.flowrate    g.flowrate  i.flowrate   jun.no.   
1021301     0.02           0.0         0.0          4
*=========================================================================*
*连接处103j
*=========================================================================*
*cardno    name        type                                                  
 1030000   "sjunl103"  sngljun                                                  
*cardno    from        to           area   f.loss   r.loss   jefvcahs 
1030101    102010000   104000000    0.0    0.0      0.0      00000000 
*cardno    ini.ctl     l.flowrate  g.flowrate   i.flowrate 
1030201    1           0.02         0.0          0.0     
*=========================================================================*
*上升段104
*=========================================================================*
*cardno      name           type             
1040000      "pipe104"      pipe             
*cardno      no.vols.                        
1040001      10                               
*cardno      vol.area       vol.no.          
1040102      3.14e-4        10              
*cardno      length         vol.no.          
1040301      0.5            10               
*cardno      volume         vol.no.          
1040401      0.0            10                
*cardno      horz.angle     vol.no.         
1040501      0.0            10                
*cardno      vert.angle     vol.no.         
1040601      90.0           10                 
*cardno      e.change       vol.no.          
1040701      0.5            10               
*cardno      roughness      hyd.dia     vol.no.   
1040801      0.1e-5         0.0         10         
*cardno      f.loss         r.loss      jun.no.   
1040901      0.0            0.0         9         
*cardno      tlpvbfe        vol.no.               
1041001      0000000        10                     
*cardno      jefvcahs       jun.no.               
1041101      00000000       9                     
*cardno      ctl            pre         temp                        vol.no.
1041201      003            153783.5      293.0    0.0   0.0   0.0    1
1041202      003            148878.5      293.0    0.0   0.0   0.0    2
1041202      003            143973.5      293.0    0.0   0.0   0.0    3
1041202      003            139068.5      293.0    0.0   0.0   0.0    4
1041202      003            134163.5      293.0    0.0   0.0   0.0    5
1041202      003            129258.5      293.0    0.0   0.0   0.0    6
1041202      003            124353.5      293.0    0.0   0.0   0.0    7
1041202      003            119448.5      293.0    0.0   0.0   0.0    8
1041202      003            114543.5      293.0    0.0   0.0   0.0    9
1041202      003            109638.5      293.0    0.0   0.0   0.0    10
*cardno      ini.clt                              
1041300      1                                    
*cardno      f.flowrate     g.flowrate  i.flowrate   jun.no.   
1041301      0.02            0.0         0.0          9
*=========================================================================*
*连接处105j
*=========================================================================*
*cardno    name         type                                             
 1050000   "sjun105"    sngljun                                              
*cardno    from         to          area   f.loss  r.loss   jefvcahs 
1050101    104010000    106000000   0.0    0.0     0.0      00000000 
*cardno    ini.ctl      l.flowrate  g.flowrate     i.flowrate 
1050201    1            0.02         0.0            0.0   
*=========================================================================*
*水平管段106
*=========================================================================*
*cardno     name          type             
1060000     "pipe106"     pipe            
*cardno     no.vols.                      
1060001     10                             
*cardno     vol.area      vol.no.         
1060102     3.14e-4       10               
*cardno     length        vol.no.         
1060301     0.45          10               
*cardno     volume        vol.no.         
1060401     0.0           10               
*cardno     horz.angle    vol.no.         
1060501     0.0           10               
*cardno     vert.angle    vol.no.         
1060601     0.0           10               
*cardno     e.change      vol.no.         
1060701     0.0           10               
*cardno     roughness     hyd.dia    vol.no.     
1060801     0.1e-5        0.0        10           
*cardno     f.loss        r.loss     jun.no.     
1060901     0.0           0.0        9           
*cardno     tlpvbfe       vol.no.                
1061001     0000000       10                      
*cardno     jefvcahs      jun.no.                
1061101     00000000      9                      
*cardno     ctl           pre        temp                       vol.no.   
1061201     003           107186.0   293.0    0.0   0.0   0.0   10                  
*cardno     ini.clt                              
1061300     1                                    
*cardno     f.flowrate    g.flowrate   i.flowrate   jun.no.   
1061301     0.02           0.0          0.0          9
*=========================================================================*
*连接处107j
*=========================================================================*
*cardno      name         type        
 1070000     "sjun107"    sngljun        
*cardno      from         to           area    f.loss   r.loss  jefvcahs 
1070101      106010000    108000000    0.0     0.0      0.0     00000000 
*cardno      ini.ctl      l.flowrate   g.flowrate   i.flowrate  
1070201      1            0.02          0.0           0.0           
*=========================================================================*
*上升段108
*=========================================================================*
*cardno      name           type            
1080000      "pipe108"      pipe            
*cardno      no.vols.                       
1080001      2                              
*cardno      vol.area       vol.no.         
1080102      3.14e-4        2           
*cardno      length         vol.no.         
1080301      0.05           2               
*cardno      volume         vol.no.         
1080401      0.0            2               
*cardno      horz.angle     vol.no.         
1080501      0.0            2               
*cardno      vert.angle     vol.no.         
1080601      90.0           2               
*cardno      e.change       vol.no.         
1080701      0.05           2               
*cardno      roughness      hyd.dia     vol.no.    
1080801      0.1e-5         0.0         2          
*cardno      f.loss         r.loss      jun.no.    
1080901      0.0            0.0         1          
*cardno      tlpvbfe        vol.no.                
1081001      0000000        2                      
*cardno      jefvcahs       jun.no.                
1081101      00000000       1                      
*cardno      ctl            pre         temp                        vol.no.
1081201      003            106695.5    293.0    0.0   0.0   0.0    1
1081202      003            105714.5    293.0    0.0   0.0   0.0    2
*cardno      ini.clt   
1081300      1         
*cardno      f.flowrate     g.flowrate  i.flowrate   jun.no.   
1081301      0.02            0.0         0.0          1
*=========================================================================*
*连接处109j
*=========================================================================*
*cardno   name       type                                                  
 1090000  "sjun109"  sngljun                                              
*cardno   from       to          area   f.loss  r.loss   jefvcahs 
1090101   108010000  110000000   0.0    0.0     0.0      00000000 
*cardno   ini.ctl    l.flowrate  g.flowrate   i.flowrate
1090201   1          0.02         0.0          0.0                      
*=========================================================================*
*上升段110
*=========================================================================*
*cardno      name         type      
1100000      "pipe110"    pipe      
*cardno      no.vols.               
1100001      5                      
*cardno      vol.area     vol.no.   
1100102      3.14e-4      5         
*cardno      length       vol.no.   
1100301      0.1          5         
*cardno      volume       vol.no.   
1100401      0.0          5         
*cardno      horz.angle   vol.no.   
1100501      0.0          5         
*cardno      vert.angle   vol.no.   
1100601      90.0         5         
*cardno      e.change     vol.no.   
1100701      0.1          5         
*cardno      roughness    hyd.dia   vol.no. 
1100801      0.1e-5       0.0       5       
*cardno      f.loss       r.loss    jun.no. 
1100901      0.0          0.0       4       
*cardno      tlpvbfe      vol.no.               
1101001      0000000      5                     
*cardno      jefvcahs     jun.no.               
1101101      00000000     4                                
*cardno      ctl          pre       temp                       vol.no.
1101201      003          104831.6  293.0   0.0   0.0   0.0    1
1101202      003          104046.8  293.0   0.0   0.0   0.0    2
1101203      003          103262.0  293.0   0.0   0.0   0.0    3
1101204      003          102477.2  293.0   0.0   0.0   0.0    4
1101205      003          101692.4  293.0   0.0   0.0   0.0    5
*cardno      ini.clt  
1101300      1                                       
*cardno      f.flowrate   g.flowrate  i.flowrate   jun.no.   
1101301      0.02          0.0           0.0        4
*=========================================================================*
*连接处200b
*=========================================================================*
*cardno    name         type                                        
2000000    "bran200"    branch                                             
*cardno    no.juns      ini.ctl                                       
2000001    3            1                                           
*cardno    area         length       volume    horz.angle  vert.angle
2000101    0.00664314      0.02         0.0       0.0         90.0     
*cardno    e.change     w.rough      hyd.dia   tlpvbfe               
2000102    0.02         0.0          0.0       0000000     
*cardno    ctl          pressure     temp                  
2000200    003          1.013e5      293.0                 
*cardno    from         to           area      f.loss      r.loss    jefvcahs
2001101    110010000    200000000    0.00664314       0.0         0.0       00000000
2002101    200010000    112000000    0.0      0.0         0.0       00000000
2003101    200010000    392000000    0.00664314       0.0         0.0       00000000
*cardno    f.flowrate   g.flowrate   i.flowrate            
2001201    0.02         0.0          0.0    
2002201    0.02         0.0          0.0  
2003201    0.0          0.0          0.0
*=========================================================================*
*外界环境392
*=========================================================================*
*cardno      comp.name   comp.type    
3920000      "tvol392"   tmdpvol      
*cardno      area        length    volume     horz.angle    vert.angle 
3920101      0.00664     1.0       0.0        0.0           90.0  
*cardno      e.change    w.rough   hyd.dia    tlpvbfe          
3920102      1.0         0.0       0.0        0000000  
*cardno      ctl         trip.no.  alph.vrc   num.vrc  
3920200      003   
*cardno      time        pressure    temperature 
3920201      0.0         1.013e5     293.0           
3920202      10000.0     1.013e5     293.0         
*=========================================================================*
*水箱112
*=========================================================================*
*cardno       name          type   
1120000       "pipe112"     pipe   
*cardno       no.vols.             
1120001       5                    
*cardno       vol.area      vol.no.
1120102       0.006362      5      
*cardno       length        vol.no.
1120301       0.1           5      
*cardno       volume        vol.no.
1120401       0.0           5      
*cardno       horz.angle    vol.no.
1120501       0.0           5      
*cardno       vert.angle    vol.no.
1120601       -90.0         5      
*cardno       e.change      vol.no.
1120701       -0.1          5           
*cardno       roughness     hyd.dia      vol.no.     
1120801       0.1e-5        0.0          5           
*cardno       f.loss        r.loss       jun.no.     
1120901       0.0           0.0          4           
*cardno       tlpvbfe       vol.no.    
1121001       0000000       5        
*cardno       jefvcahs      jun.no.                         
1121101       00000000      4                           
*cardno       ctl           pre          temp                      vol.no.    
1121201       003           102869.6     293.0   0.0   0.0   0.0   1 
1121201       003           103850.6     293.0   0.0   0.0   0.0   2 
1121201       003           104831.6     293.0   0.0   0.0   0.0   3 
1121201       003           105812.6     293.0   0.0   0.0   0.0   4 
1121201       003           106793.6     293.0   0.0   0.0   0.0   5       
*cardno       ini.clt    
1121300       1          
*cardno       f.flowrate    g.flowrate   i.flowrate   jun.no.   
1121301       0.02           0.0          0.0          4
*=========================================================================*
*连接处113j
*=========================================================================*
*cardno     name         type                                                   
1130000     "sjun113"    sngljun                                              
*cardno     from         to           area    f.loss   r.loss   jefvcahs 
1130101     112010000    114000000    0.0     0.0      0.0      0000000 
*cardno     ini.ctl      l.flowrate   g.flowrate   i.flowrate               
1130201     1            0.02          0.0          0.0                      
*=========================================================================*
*下降段114
*=========================================================================*
*cardno       name          type       
1140000       "pipe114"     pipe       
*cardno       no.vols.                 
1140001       2                        
*cardno       vol.area      vol.no.    
1140102       3.14e-4       2          
*cardno       length        vol.no.    
1140301       0.05          2           
*cardno       volume        vol.no.    
1140401       0.0           2          
*cardno       horz.angle    vol.no.    
1140501       0.0           2          
*cardno       vert.angle    vol.no.    
1140601       -90.0         2          
*cardno       e.change      vol.no.    
1140701       -0.05         2           
*cardno       roughness     hyd.dia     vol.no.       
1140801       0.1e-5        0.0         2             
*cardno       f.loss        r.loss      jun.no.       
1140901       0.0           0.0         1             
*cardno       tlpvbfe       vol.no.                   
1141001       0000000       2                         
*cardno       jefvcahs      jun.no.                   
1141101       00000000      1                         
*cardno       ctl           pre         temp                         vol.no.
1141201       003           107529.35   293.0      0.0   0.0   0.0   1
1141201       003           108019.85   293.0      0.0   0.0   0.0   2
*cardno       ini.clt    
1141300       1          
*cardno       f.flowrate    g.flowrate  i.flowrate   jun.no.        
1141301       0.02           0.0         0.0          1              
*=========================================================================*
*连接处115j
*=========================================================================*
*cardno      name         type                                                      
1150000      "sjun113"    sngljun                                                 
*cardno      from         to            area     f.loss   r.loss  jefvcahs 
1150101      114010000    116000000     0.0      0.0      0.0     00000000 
*cardno      ini.ctl      l.flowrate    g.flowrate   i.flowrate               
1150201      1            0.02          0.0          0.0      
*=========================================================================*
*水平段116
*=========================================================================*
*cardno       name           type        
1160000       "pipe116"      pipe        
*cardno       no.vols.                   
1160001       10                          
*cardno       vol.area       vol.no.     
1160102       3.14e-4        10           
*cardno       length         vol.no.     
1160301       0.5            10           
*cardno       volume         vol.no.     
1160401       0.0            10           
*cardno       horz.angle     vol.no.     
1160501       180.0          10           
*cardno       vert.angle     vol.no.     
1160601       0.0            10           
*cardno       e.change       vol.no.     
1160701       0              10           
*cardno       roughness      hyd.dia      vol.no.     
1160801       0.1e-5         0.0          10             
*cardno       f.loss         r.loss       jun.no.     
1160901       0.0            0.0          9             
*cardno       tlpvbfe        vol.no.              
1161001       0000000        10                    
*cardno       jefvcahs       jun.no.              
1161101       00000000       9                    
*cardno       ctl       pre       temp                          vol.no.
1161201       003       108265.1  293.0    0.0   0.0   0.0      10
*cadno        ini.clt         
1161300       1       
*cardno       f.flowrate     g.flowrate   i.flowrate   jun.no.   
1161301       0.02           0.0          0.0          9
*=========================================================================*
*连接处117j
*=========================================================================*
*cardno    name          type                                   
1170000    "sjunl117"    sngljun                               
*cardno    from          to           area       f.loss   r.loss   jefvcahs   
1170101    116010000     118000000    0.0        0.0      0.0      00000000  
*cardno    ini.ctl       l.flowrate   g.flowrat  i.flowrate  
1170201    1             0.02         0.0        0.0   
*=========================================================================*
*下降管段118
*=========================================================================*
*cardno      name           type           
1180000      "pipe118"      pipe           
*cardno      no.vols.                      
1180001      20                            
*cardno      vol.area       vol.no.        
1180102      3.14e-4        20             
*cardno      length         vol.no.        
1180301      0.316          20             
*cardno      volume         vol.no.        
1180401      0.0            20             
*cardno      horz.angle     vol.no.        
1180501      0.0            20             
*cardno      vert.angle     vol.no.                            
1180601      -90.0          20                
*cardno      e.change       vol.no.                      
1180701      -0.316         20                           
*cardno      roughness      hyd.dia    vol.no.           
1180801      0.1e-5         0.0        20                
*cardno      f.loss         r.loss     jun.no.           
1180901      0.0            0.0        19                
*cardno      tlpvbfe        vol.no.                      
1181001      0000000        20                           
*cardno      jefvcahs       jun.no.                      
1181101      00000000       19                           
*cardno      ctl            pre        temp                      vol.no. 
1181201      003            109815.08  293.0  0.0   0.0   0.0    1       
1181202      003            112915.04  293.0  0.0   0.0   0.0    2       
1181203      003            116015.0   293.0  0.0   0.0   0.0    3       
1181204      003            119114.96  293.0  0.0   0.0   0.0    4       
1181205      003            122214.92  293.0  0.0   0.0   0.0    5       
1181206      003            125314.88  293.0  0.0   0.0   0.0    6       
1181207      003            128414.84  293.0  0.0   0.0   0.0    7       
1181208      003            131514.8   293.0  0.0   0.0   0.0    8       
1181209      003            134614.76  293.0  0.0   0.0   0.0    9       
1181210      003            137714.72  293.0  0.0   0.0   0.0    10      
1181211      003            140814.68  293.0  0.0   0.0   0.0    11      
1181212      003            143914.64  293.0  0.0   0.0   0.0    12      
1181213      003            147014.6   293.0  0.0   0.0   0.0    13      
1181214      003            150114.56  293.0  0.0   0.0   0.0    14      
1181215      003            153214.52  293.0  0.0   0.0   0.0    15      
1181216      003            156314.48  293.0  0.0   0.0   0.0    16      
1181217      003            159414.44  293.0  0.0   0.0   0.0    17      
1181218      003            162514.4   293.0  0.0   0.0   0.0    18      
1181219      003            165614.36  293.0  0.0   0.0   0.0    19      
1181220      003            168714.32  293.0  0.0   0.0   0.0    20      
*cadno       ini.clt                                     
1181300      1                                           
*cardno      f.flowrate     g.flowrate   i.flowrate     jun.no.   
1181301      0.02           0.0          0.0            19
*=========================================================================*
*连接处119j
*=========================================================================*
*cardno     name         type                                                 
1190000     "sjunl119"   sngljun                                             
*cardno     from         to          area    f.loss  r.loss jefvcahs 
1190101     118010000    120000000   0.0     0.0     0.0    00000000 
*cardno     ini.ctl      l.flowrate  g.flowrate   i.flowrate                
1190201     1            0.02        0.0          0.0            
*=========================================================================*
*水平段120
*=========================================================================*
*cardno       name           type            
1200000       "pipe120"      pipe            
*cardno       no.vols.                       
1200001       2                              
*cardno       vol.area       vol.no.         
1200101       3.14e-4        2               
*cardno       length         vol.no.         
1200301       0.475          2               
*cardno       volume         vol.no.         
1200401       0.0            2               
*cardno       horz.angle     vol.no.         
1200501       0.0            2               
*cardno       vert.angle     vol.no.         
1200601       0.0            2               
*cardno       e.change       vol.no.         
1200701       0.0            2               
*cardno       roughness      hyd.dia      vol.no.    
1200801       0.1e-5         0.0          2          
*cardno       f.loss         r.loss       jun.no.    
1200901       0.0            0.0          1          
*cardno       tlpvbfe        vol.no.                 
1201001       0000000        2                       
*cardno       jefvcahs       jun.no.                 
1201101       00000000       1                       
*cardno       ctl            pre          temp                      vol.no.
1201201       003            168989.0     293.0   0.0   0.0   0.0   2
*cadno        ini.clt      
1201300       1            
*cardno       f.flowrate     g.flowrate   i.flowrate    jun.no.     
1201301       0.02           0.0          0.0           1
*=========================================================================*
*连接处121j
*=========================================================================*
*cardno    name         type                                                  
1210000    "sjunl121"   sngljun                                              
*cardno    from         to            area    f.loss  r.loss   jefvcahs 
1210101    120010000    100000000     0.0     0.0     0.0      00000000 
*cardno    ini.ctl      l.flowrate    g.flowrate    i.flowrate               
1210201    1            0.02          0.0           0.0                      
*=========================================================================*
*水力学部件输入结束
*=========================================================================*
*热构件输入
*=========================================================================*
*加热管段pipe100
*=========================================================================*
*cardno     no.h.s       no.m.p   ge.type  s.s.flg  c.left   ref.flg   b.ind
11000000    5            6        2        1        0.01     0
*           m.loc.flg    format
11000100    0            1
*           no.intv      right.cord
11000101    5            0.012
*           comp.no      intv.
11000201    1            5
*           sourceval    intv
11000301    1.0          5
*           temp         mesh.pt
11000401    293.0        6
*           l.bound.vol  incrmt     b.cond     s.area    s.area.f     hs.no
11000501    100010000    0          1          1         0.26         1 
11000502    100020000    0          1          1         0.26         2 
11000503    100030000    0          1          1         0.26         3 
11000504    100040000    0          1          1         0.26         4 
11000505    100050000    0          1          1         0.26         5        
*           r.bound.vol  incrmt     b.cond     s.area    s.area.f     hs.no
11000601    0            0          0          1         0.26         1 
11000602    0            0          0          1         0.26         2 
11000603    0            0          0          1         0.26         3 
11000604    0            0          0          1         0.26         4 
11000605    0            0          0          1         0.26         5          
*           source       s.mult     l.d.h.mult    r.d.h.mult   hs.no
11000701    012          1.0        0.0           0.0          1
11000702    012          1.0        0.0           0.0          2
11000703    012          1.0        0.0           0.0          3
11000704    012          1.0        0.0           0.0          4
11000705    012          1.0        0.0           0.0          5
*           hy.dia  fhlen   rhlen   fgsl   rgsl   gf.loss gr.loss bf   hs.no
11000801    0.0     0.01    0.01    0.0    0.0    0.0     0.0     1.0  5
*           hy.dia  fhlen   rhlen   fgsl   rgsl   gf.loss gr.loss bf   hs.no
11000901    0.0     0.01    0.01    0.0    0.0    0.0     0.0     1.0  5
*=========================================================================*
*水平段pipe102
*=========================================================================*
*cardno     no.h.s       no.m.p   ge.type  s.s.flg  c.left   ref.flg   b.ind
11020000    5            6        2        1        0.01     0
*           m.loc.flg    format
11020100    0            1
*           no.intv      right.cord
11020101    5            0.012
*           comp.no      intv.
11020201    1            5
*           sourceval    intv.
11020301    1.0          5
*           temp         mesh.pt
11020401    293.0        6
*           l.bound.vol  incrmt     b.cond     s.area    s.area.f     hs.no
11020501    102010000    0          1          1         0.09         1 
11020502    102020000    0          1          1         0.09         2 
11020503    102030000    0          1          1         0.09         3 
11020504    102040000    0          1          1         0.09         4 
11020505    102050000    0          1          1         0.09         5 
*           r.bound.vol  incrmt     b.cond     s.area    s.area.f     hs.no
11020601    0            0          0          1         0.09         1 
11020602    0            0          0          1         0.09         2 
11020603    0            0          0          1         0.09         3 
11020604    0            0          0          1         0.09         4 
11020605    0            0          0          1         0.09         5  
*           source       s.mult     l.d.h.mult    r.d.h.mult   hs.no
11020701    0            0.0        0.0           0.0          1
11020702    0            0.0        0.0           0.0          2
11020702    0            0.0        0.0           0.0          3
11020702    0            0.0        0.0           0.0          4
11020702    0            0.0        0.0           0.0          5
*           hy.dia   fhlen   rhlen   fgsl   rgsl   gf.loss gr.loss bf   hs.no
11020801    0.0      99.9    99.9    0.0    0.0    0.0     0.0     1.0  5
*           hy.dia   fhlen   rhlen   fgsl   rgsl   gf.loss gr.loss bf   hs.no
11020901    0.0      99.9    99.9    0.0    0.0    0.0     0.0     1.0  5
*=========================================================================*
*上升段pipe104
*=========================================================================*
*cardno     no.h.s       no.m.p   ge.type  s.s.flg  c.left   ref.flg   b.ind
11040000    10           6        2        1        0.01     0
*           m.loc.flg    format
11040100    0            1
*           no.intv      right.cord
11040101    5            0.012
*           comp.no      intv.
11040201    1            5
*           sourceval    intv
11040301    1.0          5
*           temp         mesh.pt
11040401    293.0        6
*           l.bound.vol  incrmt     b.cond     s.area    s.area.f     hs.no
11040501    104010000    0          1          1         0.5          1 
11040502    104020000    0          1          1         0.5          2
11040503    104030000    0          1          1         0.5          3 
11040504    104040000    0          1          1         0.5          4 
11040505    104050000    0          1          1         0.5          5 
11040506    104060000    0          1          1         0.5          6 
11040507    104070000    0          1          1         0.5          7 
11040508    104080000    0          1          1         0.5          8 
11040509    104090000    0          1          1         0.5          9 
11040510    104100000    0          1          1         0.5          10  
*           r.bound.vol  incrmt     b.cond     s.area    s.area.f     hs.no
11040601    0            0          0          1         0.5          1 
11040602    0            0          0          1         0.5          2
11040603    0            0          0          1         0.5          3 
11040604    0            0          0          1         0.5          4 
11040605    0            0          0          1         0.5          5 
11040606    0            0          0          1         0.5          6 
11040607    0            0          0          1         0.5          7 
11040608    0            0          0          1         0.5          8 
11040609    0            0          0          1         0.5          9 
11040610    0            0          0          1         0.5          10   
*           source       s.mult     l.d.h.mult    r.d.h.mult   hs.no
11040701    0            0.0        0.0           0.0          10
*           hy.dia   fhlen   rhlen   fgsl   rgsl   gf.loss gr.loss bf   hs.no
11040801    0.0      99.9    99.9    0.0    0.0    0.0     0.0     1.0  10
*           hy.dia   fhlen   rhlen   fgsl   rgsl   gf.loss gr.loss bf   hs.no
11040901    0.0      99.9    99.9    0.0    0.0    0.0     0.0     1.0  10
*=========================================================================*
*水平段pipe106
*=========================================================================*
*cardno     no.h.s       no.m.p   ge.type  s.s.flg  c.left   ref.flg   b.ind
11060000    10           6        2        1        0.01     0
*           m.loc.flg    format
11060100    0            1
*           no.intv      right.cord
11060101    5            0.012
*           comp.no      intv.
11060201    1            5
*           sourceval    intv
11060301    1.0          5
*           temp         mesh.pt
11060401    293.0        6
*           l.bound.vol  incrmt     b.cond     s.area    s.area.f     hs.no
11060501    106010000    0          1          1         0.45         1 
11060502    106020000    0          1          1         0.45         2
11060503    106030000    0          1          1         0.45         3 
11060504    106040000    0          1          1         0.45         4 
11060505    106050000    0          1          1         0.45         5 
11060506    106060000    0          1          1         0.45         6 
11060507    106070000    0          1          1         0.45         7 
11060508    106080000    0          1          1         0.45         8 
11060509    106090000    0          1          1         0.45         9 
11060510    106100000    0          1          1         0.45         10  
*           r.bound.vol  incrmt     b.cond     s.area    s.area.f     hs.no
11060601    0            0          0          1         0.45         1 
11060602    0            0          0          1         0.45         2 
11060603    0            0          0          1         0.45         3 
11060604    0            0          0          1         0.45         4 
11060605    0            0          0          1         0.45         5 
11060606    0            0          0          1         0.45         6 
11060607    0            0          0          1         0.45         7 
11060608    0            0          0          1         0.45         8 
11060609    0            0          0          1         0.45         9 
11060610    0            0          0          1         0.45         10  
*           source       s.mult     l.d.h.mult    r.d.h.mult   hs.no
11060701    0            0.0        0.0           0.0          10
*           hy.dia   fhlen   rhlen   fgsl   rgsl   gf.loss gr.loss bf   hs.no
11060801    0.0      99.9    99.9    0.0    0.0    0.0     0.0     1.0  10
*           hy.dia   fhlen   rhlen   fgsl   rgsl   gf.loss gr.loss bf   hs.no
11060901    0.0      99.9    99.9    0.0    0.0    0.0     0.0     1.0  10
*=========================================================================*
*上升段pipe108
*=========================================================================*
*cardno     no.h.s       no.m.p   ge.type  s.s.flg  c.left   ref.flg   b.ind
11080000    2            6        2        1        0.01     0
*           m.loc.flg    format
11080100    0            1
*           no.intv      right.cord
11080101    5            0.012
*           comp.no      intv.
11080201    1            5
*           sourceval    intv
11080301    1.0          5
*           temp         mesh.pt
11080401    293.0        6
*           l.bound.vol  incrmt     b.cond     s.area    s.area.f     hs.no
11080501    108010000    0          1          1         0.05         1 
11080502    108020000    0          1          1         0.05         2   
*           r.bound.vol  incrmt     b.cond     s.area    s.area.f     hs.no
11080601    0            0          0          1         0.05         1 
11080602    0            0          0          1         0.05         2            
*           source       s.mult     l.d.h.mult    r.d.h.mult   hs.no
11080701    0            0.0        0.0           0.0          1
11080702    0            0.0        0.0           0.0          2
*           hy.dia   fhlen   rhlen   fgsl   rgsl   gf.loss gr.loss bf   hs.no
11080801    0.0      99.9    99.9    0.0    0.0    0.0     0.0     1.0  2
*           hy.dia   fhlen   rhlen   fgsl   rgsl   gf.loss gr.loss bf   hs.no
11080901    0.0      99.9    99.9    0.0    0.0    0.0     0.0     1.0  2
*=========================================================================*
*水箱
*=========================================================================*
*cardno     no.h.s       no.m.p   ge.type  s.s.flg  c.left   ref.flg   b.ind
11100000    5            6        2        1        0.01     0
*           m.loc.flg    format
11100100    0            1
*           no.intv      right.cord
11100101    5            0.012
*           comp.no      intv.
11100201    1            5
*           sourceval    intv
11100301    1.0          5
*           temp         mesh.pt
11100401    293.0        6
*           l.bound.vol  incrmt     b.cond     s.area    s.area.f     hs.no
11100501    110010000    0          1          1         0.1          1 
11100502    110020000    0          1          1         0.1          2 
11100503    110030000    0          1          1         0.1          3 
11100504    110040000    0          1          1         0.1          4 
11100505    110050000    0          1          1         0.1          5    
*           r.bound.vol  incrmt     b.cond     s.area    s.area.f     hs.no
11100601    112050000    0          1          1         0.1          1 
11100602    112040000    0          1          1         0.1          2 
11100603    112030000    0          1          1         0.1          3 
11100604    112020000    0          1          1         0.1          4 
11100605    112010000    0          1          1         0.1          5            
*           source       s.mult     l.d.h.mult    r.d.h.mult   hs.no
11100701    0            0          0.0           0.0          1
11100702    0            0          0.0           0.0          2
11100703    0            0          0.0           0.0          3
11100704    0            0          0.0           0.0          4
11100705    0            0          0.0           0.0          5
*           hy.dia   fhlen   rhlen   fgsl   rgsl   gf.loss gr.loss bf   hs.no
11100801    0.0      99.9    99.9    0.0    0.0    0.0     0.0     1.0  5
*           hy.dia   fhlen   rhlen   fgsl   rgsl   gf.loss gr.loss bf   hs.no
11100901    0.0      99.9    99.9    0.0    0.0    0.0     0.0     1.0  5
*=========================================================================*
*下降段pipe112
*=========================================================================*
*cardno     no.h.s       no.m.p   ge.type  s.s.flg  c.left   ref.flg   b.ind
11120000    5            6        2        1        0.045     0
*           m.loc.flg    format
11120100    0            1
*           no.intv      right.cord
11120101    5            0.047
*           comp.no      intv.
11120201    1            5
*           sourceval    intv
11120301    1.0          5
*           temp         mesh.pt
11120401    293.0        6
*           l.bound.vol  incrmt     b.cond     s.area    s.area.f     hs.no
11120501    112010000    0          1          1         0.1          1 
11120502    112020000    0          1          1         0.1          2 
11120503    112030000    0          1          1         0.1          3 
11120504    112040000    0          1          1         0.1          4 
11120505    112050000    0          1          1         0.1          5    
*           r.bound.vol  incrmt     b.cond     s.area    s.area.f     hs.no
11120601    0            0          0          1         0.1          1 
11120602    0            0          0          1         0.1          2 
11120603    0            0          0          1         0.1          3 
11120604    0            0          0          1         0.1          4 
11120605    0            0          0          1         0.1          5            
*           source       s.mult     l.d.h.mult    r.d.h.mult   hs.no
11120701    0            0.0       0.0           0.0          1
11120702    0            0.0       0.0           0.0          2
11120703    0            0.0       0.0           0.0          3
11120704    0            0.0       0.0           0.0          4
11120705    0            0.0       0.0           0.0          5
*           hy.dia   fhlen   rhlen   fgsl   rgsl   gf.loss gr.loss bf   hs.no
11120801    0.0      99.9    99.9    0.0    0.0    0.0     0.0     1.0  5
*           hy.dia   fhlen   rhlen   fgsl   rgsl   gf.loss gr.loss bf   hs.no
11120901    0.0      99.9    99.9    0.0    0.0    0.0     0.0     1.0  5
*=========================================================================*
*下降段pipe114
*=========================================================================*
*cardno     no.h.s       no.m.p   ge.type  s.s.flg  c.left   ref.flg   b.ind
11140000    2            6        2        1        0.01     0
*           m.loc.flg    format
11140100    0            1
*           no.intv      right.cord
11140101    5            0.012
*           comp.no      intv.
11140201    1            5
*           sourceval    intv
11140301    1.0          5
*           temp         mesh.pt
11140401    293.0        6
*           l.bound.vol  incrmt     b.cond     s.area    s.area.f     hs.no
11140501    114010000    0          1          1         0.05         1 
11140502    114020000    0          1          1         0.05         2     
*           r.bound.vol  incrmt     b.cond     s.area    s.area.f     hs.no
11140601    0            0          0          1         0.05         1 
11140602    0            0          0          1         0.05         2            
*           source       s.mult     l.d.h.mult    r.d.h.mult   hs.no
11140701    0            0.0        0.0           0.0          1
11140702    0            0.0        0.0           0.0          2
*           hy.dia   fhlen   rhlen   fgsl   rgsl   gf.loss gr.loss bf   hs.no
11140801    0.0      99.9    99.9    0.0    0.0    0.0     0.0     1.0  2
*           hy.dia   fhlen   rhlen   fgsl   rgsl   gf.loss gr.loss bf   hs.no
11140901    0.0      99.9    99.9    0.0    0.0    0.0     0.0     1.0  2
*=========================================================================*
*水平段pipe116
*=========================================================================*
*cardno     no.h.s       no.m.p   ge.type  s.s.flg  c.left   ref.flg   b.ind
11160000    10            6        2        1        0.01     0
*           m.loc.flg    format
11160100    0            1
*           no.intv      right.cord
11160101    5            0.012
*           comp.no      intv.
11160201    1            5
*           sourceval    intv
11160301    1.0          5
*           temp         mesh.pt
11160401    293.0        6
*           l.bound.vol  incrmt     b.cond     s.area    s.area.f     hs.no
11160501    116010000    0          1          1         0.5          1 
11160502    116020000    0          1          1         0.5          2 
11160503    116030000    0          1          1         0.5          3 
11160504    116040000    0          1          1         0.5          4 
11160505    116050000    0          1          1         0.5          5 
11160506    116060000    0          1          1         0.5          6 
11160507    116070000    0          1          1         0.5          7 
11160508    116080000    0          1          1         0.5          8 
11160509    116090000    0          1          1         0.5          9 
11160510    116100000    0          1          1         0.5          10     
*           r.bound.vol  incrmt     b.cond     s.area    s.area.f     hs.no
11160601    0            0          0          1         0.5          1 
11160602    0            0          0          1         0.5          2 
11160603    0            0          0          1         0.5          3 
11160604    0            0          0          1         0.5          4 
11160605    0            0          0          1         0.5          5 
11160606    0            0          0          1         0.5          6 
11160607    0            0          0          1         0.5          7 
11160608    0            0          0          1         0.5          8 
11160609    0            0          0          1         0.5          9 
11160610    0            0          0          1         0.5          10          
*           source       s.mult     l.d.h.mult    r.d.h.mult   hs.no
11160701    0            0.0        0.0           0.0          10
*           hy.dia   fhlen   rhlen   fgsl   rgsl   gf.loss gr.loss bf   hs.no
11160801    0.0      99.9    99.9    0.0    0.0    0.0     0.0     1.0  10
*           hy.dia   fhlen   rhlen   fgsl   rgsl   gf.loss gr.loss bf   hs.no
11160901    0.0      99.9    99.9    0.0    0.0    0.0     0.0     1.0  10
*=========================================================================*
*下降段pipe118
*=========================================================================*
*cardno     no.h.s       no.m.p   ge.type  s.s.flg  c.left   ref.flg   b.ind
11180000    20           6        2        1        0.01     0
*           m.loc.flg    format
11180100    0            1
*           no.intv      right.cord
11180101    5            0.012
*           comp.no      intv.
11180201    1            5
*           sourceval    intv
11180301    1.0          5
*           temp         mesh.pt
11180401    293.0        6
*           l.bound.vol  incrmt     b.cond     s.area    s.area.f     hs.no
11180501    118010000    0          1          1         0.316        1 
11180502    118020000    0          1          1         0.316        2 
11180503    118030000    0          1          1         0.316        3 
11180504    118040000    0          1          1         0.316        4 
11180505    118050000    0          1          1         0.316        5 
11180501    118060000    0          1          1         0.316        6
11180502    118070000    0          1          1         0.316        7
11180503    118080000    0          1          1         0.316        8
11180504    118090000    0          1          1         0.316        9
11180505    118100000    0          1          1         0.316        10
11180501    118110000    0          1          1         0.316        11
11180502    118120000    0          1          1         0.316        12
11180503    118130000    0          1          1         0.316        13
11180504    118140000    0          1          1         0.316        14
11180505    118150000    0          1          1         0.316        15
11180501    118160000    0          1          1         0.316        16
11180502    118170000    0          1          1         0.316        17
11180503    118180000    0          1          1         0.316        18
11180504    118190000    0          1          1         0.316        19
11180505    118200000    0          1          1         0.316        20  
*           r.bound.vol  incrmt     b.cond     s.area    s.area.f     hs.no
11180601    0            0          0          1         0.316        1 
11180602    0            0          0          1         0.316        2 
11180603    0            0          0          1         0.316        3 
11180604    0            0          0          1         0.316        4 
11180605    0            0          0          1         0.316        5 
11180601    0            0          0          1         0.316        6 
11180602    0            0          0          1         0.316        7 
11180603    0            0          0          1         0.316        8 
11180604    0            0          0          1         0.316        9 
11180605    0            0          0          1         0.316        10 
11180601    0            0          0          1         0.316        11
11180602    0            0          0          1         0.316        12 
11180603    0            0          0          1         0.316        13 
11180604    0            0          0          1         0.316        14 
11180605    0            0          0          1         0.316        15 
11180601    0            0          0          1         0.316        16 
11180602    0            0          0          1         0.316        17
11180603    0            0          0          1         0.316        18
11180604    0            0          0          1         0.316        19
11180605    0            0          0          1         0.316        20          
*           source       s.mult     l.d.h.mult    r.d.h.mult   hs.no
11180701    0            0.0        0.0           0.0          20
*           hy.dia   fhlen   rhlen   fgsl   rgsl   gf.loss gr.loss bf   hs.no
11180801    0.0      99.9    99.9    0.0    0.0    0.0     0.0     1.0  20
*           hy.dia   fhlen   rhlen   fgsl   rgsl   gf.loss gr.loss bf   hs.no
11180901    0.0      99.9    99.9    0.0    0.0    0.0     0.0     1.0  20
*=========================================================================*
*水平段pipe120
*=========================================================================*
*cardno     no.h.s       no.m.p   ge.type  s.s.flg  c.left   ref.flg   b.ind
11200000    2            6        2        1        0.01     0
*           m.loc.flg    format
11200100    0            1
*           no.intv      right.cord
11200101    5            0.012
*           comp.no      intv.
11200201    1            5
*           sourceval    intv
11200301    1.0          5
*           temp         mesh.pt
11200401    293.0        6
*           l.bound.vol  incrmt     b.cond     s.area    s.area.f     hs.no
11200501    120010000    0          1          1         0.225        1 
11200502    120020000    0          1          1         0.225        2   
*           r.bound.vol  incrmt     b.cond     s.area    s.area.f     hs.no
11200601    0            0          0          1         0.225         1 
11200602    0            0          0          1         0.225         2          
*           source       s.mult     l.d.h.mult    r.d.h.mult   hs.no
11200701    0            0.0        0.0           0.0          1
11200702    0            0.0        0.0           0.0          2
*           hy.dia   fhlen   rhlen   fgsl   rgsl   gf.loss gr.loss bf   hs.no
11200801    0.0      99.9    99.9    0.0    0.0    0.0     0.0     1.0  2
*           hy.dia   fhlen   rhlen   fgsl   rgsl   gf.loss gr.loss bf   hs.no
11200901    0.0      99.9    99.9    0.0    0.0    0.0     0.0     1.0  2
*=========================================================================*
*                                                                         *
* composition type and data format                                        *
*                                                                         *
*=========================================================================*
*cardno.    self-definition    tc format   cp format    location          *
20100100       tbl/fctn           1          1         *加热管段 
*=========================================================================*
*material  1   tc
*cardno.       temperature      thermal conductivity        
20100101       273.15           25.0                        
20100102       100000.67        25.0                        
*20100103       533.15           5.782385                    
*20100104       699.8167         4.633177                    
*20100105       866.4833         3.880307                    
*20100106       1033.150         3.357625                    
*20100107       1088.706         3.155129                    
*20100108       1199.817         2.983787                    
*20100109       1283.150         2.836674                    
*20100110       1366.483         2.713792                    
*20100111       1533.150         2.521680                    
*20100112       1616.483         2.448990                    
*20100113       1699.817         2.391875                    
*20100114       1977.594         2.289762                    
*20100115       2255.372         2.307069                    
*20100116       2533.150         2.433413                    
*20100117       2810.928         2.661870                    
*20100118       3088.706         250
*material  1   cp                  
*cardno.       temperature     heat capacity       
20100151       273.15           9100000.0           
20100152       100000.15        9100000.0           
*20100153       373.15          2746357.0           
*20100154       673.15          3138694.0           
*20100155       1373.15         3443844.0           
*20100156       1773.15         3531030.0           
*20100157       1973.15         3792588.0           
*20100158       2173.15         4228518.0           
*20100159       2373.15         4882412.0           
*20100160       2673.15         6015829.0           
*20100161       2773.15         6320980.0           
*20100162       2873.15         6582538.0           
*20100163       2973.15         6713317.0           
*20100164       3113.15         6800503.0           
*20100165       4699.817        6800503.0    
*=========================================================================*
*genral  table
*=========================================================================*                                                          
* heater power                                                                
*table    type    tripno.   factor1   factor2                                    
20201200  power                                    
* table   time     power                                                       
20201201  0.0      460.0
20201202  500000.0   460.0
*=========================================================================*
*压差
20510000  ct100  sum  1.0  0.0  1
20510001  0.0  1.0,p,100010000  -1.0,p,100050000
*温差
20510100  ctl101 sum  1.0  0.0  1
20510101  0.0  1.0,tempf,100050000  -1.0,tempf,100010000
*温差
20510200  ctl102  sum 1.0  0.0  1
20510201  0.0  1.0,tempf,100050000  -1.0,tempf,112010000
*驱动力
20511100  ctl111  sum  1.0  0.0  1
20511101  0.0  1.0,p,100010000  -1.0,p,100050000   
20511102  1.0,p,104100000  -1.0,p,104010000
*加热段密度
20511200  ctl112  sum  1.0  0.0  1  
20511201  0.0  0.2,rho,100010000  0.2,rho,100020000
20511202       0.2,rho,100030000  0.2,rho,100040000
20511203       0.2,rho,100050000
*上升段密度  
20511300  ctl113  sum  1.0  0.0  1
20511301  0.0  0.1,rho,104010000  0.1,rho,104020000
20511302       0.1,rho,104030000  0.1,rho,104040000
20511303       0.1,rho,104050000  0.1,rho,104060000
20511304       0.1,rho,104070000  0.1,rho,104080000
20511305       0.1,rho,104090000  0.1,rho,104100000
*下降段密度
20511400  ctl114  sum  1.0  0.0  1
20511401  0.0  0.05,rho,118010000  0.05,rho,118020000
20511402       0.05,rho,118030000  0.05,rho,118040000
20511403       0.05,rho,118050000  0.05,rho,118060000
20511404       0.05,rho,118070000  0.05,rho,118080000
20511405       0.05,rho,118090000  0.05,rho,118100000
20511406       0.05,rho,118110000  0.05,rho,118120000
20511407       0.05,rho,118130000  0.05,rho,118140000
20511408       0.05,rho,118150000  0.05,rho,118160000
20511409       0.05,rho,118170000  0.05,rho,118180000
20511410       0.05,rho,118190000  0.05,rho,118200000
*水箱密度
20511500  ctl115  sum  1.0  0.0  1
20511501  0.0  0.2,rho,112010000  0.2,rho,112020000
20511502       0.2,rho,112030000  0.2,rho,112040000
20511503       0.2,rho,112050000
**加热段积分
*20511600  ctl116  intrgral  0.00001  0.0  1
*20511601  cntrlvar,112
**上升段积分
*20511700  ctl117  integral  0.00001  0.0  1
*20511701  cntrlvar,113
**下降段积分
*20511800  ctl118  integral  0.00001  0.0  1
*20511801  cntrlvar,114
**水箱积分
*20511900  ctl119  integral  0.00001  0.0  1
*20511901  cntrlvar,115
**驱动力计算
*20512000  ctl120  sum  1.0  0.0  1
*20512001  0.0  1.0,cntrlvar,118  1.0,cntrlvar,119
*20512002      -1.0,cntrlvar,116  -1.0,cntrlvar,117
*驱动力计算正确
20512100  ctl121  sum  1.0  0.0  1
20512101  0.0  60.45,rho,118010000  57.35,rho,118020000
20512102       54.25,rho,118030000  51.15,rho,118040000
20512103       48.05,rho,118050000  44.95,rho,118060000
20512104       41.85,rho,118070000  38.75,rho,118080000
20512105       35.65,rho,118090000  32.55,rho,118100000
20512106       29.45,rho,118110000  26.35,rho,118120000
20512107       23.25,rho,118130000  20.15,rho,118140000
20512108       17.05,rho,118150000  13.95,rho,118160000
20512109       10.85,rho,118170000  7.75,rho,118180000
20512110       4.65,rho,118190000   1.55,rho,118200000
20512200  ctl122  sum  1.0  0.0  1
20512201  0.0  -1.28,rho,100010000   -3.83,rho,100020000
20512202       -6.38,rho,100030000   -8.93,rho,100040000
20512203       -11.48,rho,100050000  -15.21,rho,104010000
20512204       -20.11,rho,104020000  -25.02,rho,104030000
20512205       -29.92,rho,104040000  -34.83,rho,104050000
20512206       -39.73,rho,104060000  -44.64,rho,104070000
20512207       -49.54,rho,104080000  -54.45,rho,104090000
20512208       -59.35,rho,104100000
20512300  ctl123  sum  1.0  0.0  1
20512301  0.0  0.00001,cntrlvar,121  0.00001,cntrlvar,122
.