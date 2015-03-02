# toa2D
Time of arrival algorithms for the planar case

 [Rc,Sc]=toa_2D_33(d)
 Calculate possible placements of receivers R and senders S
 in the plane so that the distance between R(:,i) and S(:,j) is d(i,j)
 Input: 
    d - 3x3 matrix
 Output:
    Rc - cell array with possible receiver configurations R, i.e. R = Rc{k}.
    Sc - cell array with possible sender configurations, i.e. S = S{k}
    (Each R is of size 2x3 and S of size 2x3
 
 If you use the solver please refer to the following publication, where
 a more detailed description of the solver is given:
 @inproceedings{kuang_etal_icaasp_2013,
   author       = {Kuang, Yubin and Burgess, Simon and Torstensson, Anna and \AA str\"o m, Karl},
   booktitle    = {A},
   issn         = {1520-6149},
   keyword      = {Sensor Network Calibration,TOA,Localization},
   language     = {eng},
   location     = {Vancouver, Canada},
   pages        = {3875--3879},
   publisher    = {IEEE},
   title        = {A Complete Characterization and Solution to the Microphone Position Self-Calibration Problem},
   year         = {2013},
 }
