%%%%%%%%%%%%%%%%%%%%%%%%%%%%pentanol
start_1_lam1=[
    1.1
    1.2
    1.3
    1.4
    1.5
    1.6
    1.7
    1.8
    1.9
    2.0
    2.1
    2.2 
];

%FUNDAMENTAL MODE imaginary part
start_1_img=[
    255.53659704374192
    246.89078549867332       
    240.19882597314856       
    234.852852565647         
    230.47504739095078       
    226.81555205115927       
    223.70452001455666       
    221.02207849911414       
    218.67816849180286       
    216.6095514504619        
    214.76534775607456       
    213.106355021403         
];

  x=1.1:0.0005:2.2;
  y=interp1(start_1_lam1,start_1_img,x,'spline');
plot(start_1_lam1,start_1_img,'.w',x,y,'cyan','LineWidth',2.2);
hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%propanol
start_5_lam1=[
    1.1
    1.2
    1.3
    1.4
    1.5
    1.6
    1.7
    1.8
    1.9
    2.0
    2.1
    2.2 
];

%FUNDAMENTAL MODE imaginary part
start_5_img=[
    258.6320273883446
    249.38755344337122       
    242.24235809788698       
    236.52423424521564       
    231.81809849810534       
    227.85085707555353       
    224.4374672525354        
    221.44756273085204       
    218.78305207136802       
    216.37502804029887       
    214.167716270023         
    212.11787049199256       
];

  x=1.1:0.0005:2.2;
  y=interp1(start_5_lam1,start_5_img,x,'spline');
plot(start_5_lam1,start_5_img,'.w',x,y,'red','LineWidth',2.2);
hold on


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ethanol
start_6_lam1=[
    1.1
    1.2
    1.3
    1.4
    1.5
    1.6
    1.7
    1.8
    1.9
    2.0
    2.1
    2.2 
];

%FUNDAMENTAL MODE imaginary part
start_6_img=[
  260.17831805906036
  250.58701410053382       
  243.17410029518174       
  237.23087727300964       
  232.32108504648846       
  228.1583579737567        
  224.54894404703575       
  221.3564892639407        
  218.47671904531242       
  215.8426906293949        
  213.3912747529793        
  211.0792040740938        
];
 
  x=1.1:0.0005:2.2;
  y=interp1(start_6_lam1,start_6_img,x,'spline');
plot(start_6_lam1,start_6_img,'.w',x,y,'green','LineWidth',2.2);
hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%methanol
start_7_lam1=[
    1.1
    1.2
    1.3
    1.4
    1.5
    1.6
    1.7
    1.8
    1.9
    2.0
    2.1
    2.2 
];

%FUNDAMENTAL MODE imaginary part
start_7_img=[
   268.0524013369864
   256.28445585181595       
   247.186184745466         
   239.82267785712392       
   233.6307883549717        
   228.24882354671334       
   223.43839446859283       
   219.0380276596148        
   214.92966172000268       
   211.04807840598883       
   207.33419653127612       
   203.75898117522888       
];
 
  x=1.1:0.0005:2.2;
  y=interp1(start_7_lam1,start_7_img,x,'spline');
plot(start_7_lam1,start_7_img,'.w',x,y,'LineWidth',2.2);


set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','xtick',[1.1:0.2:2.2])
xlabel('Frequency(THz)','FontSize',16);
ylabel('Mode field radius(\mum)','FontSize',16);
set(gca,'FontSize',18); % size of tick marks on both axes
legend(' ','Pentanol',' ','Propanol',' ','Ethanol',' ','Methanol');
set(legend,'color','none');
%ylim([0.003 0.02]);
xlim([1.1 2.2]);
grid on