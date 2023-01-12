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
    1.043996880073302E-7
    1.0015517247348824E-7
    9.671296198045223E-8
    9.384286128924464E-8 
    9.139774121742528E-8 
    8.927755003979781E-8
    8.741279045324764E-8 
    8.575329302528011E-8
    8.425983143038947E-8 
    8.290486644064863E-8
    8.166510320250047E-8
    8.052212011062914E-8  
     
    ];

  x=1.1:0.0005:2.2;
  y=interp1(start_1_lam1,start_1_img,x,'spline');
plot(start_1_lam1,start_1_img,'.w',x,y,'cyan','LineWidth',2.2);
hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%propanol
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
    1.0721105397287536E-7
    1.0249908041453096E-7 
    9.867847243773723E-8
    9.548004712948532E-8
    9.273193526678655E-8 
    9.03174416080393E-8
     8.815550225104444E-8
     8.6187535971543E-8
     8.436750397703621E-8
     8.266293139219406E-8 
     8.104606210645804E-8
     7.949468287662756E-8 
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
   1.0860311380077223E-7
   1.0361759409620937E-7
   9.957009055895625E-8
   9.616959162006432E-8 
   9.323021872012868E-8
   9.062572276367432E-8 
   8.826833947479116E-8 
   8.609462549052076E-8
   8.40534565131573E-8
   8.21133329327108E-8 
   8.024074977635032E-8 
   7.841317584559735E-8  
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
   1.1556463938814596E-7
   1.0886345811139858E-7  
   1.033764251421126E-7 
   9.86850460042474E-8 
   9.452408546189736E-8
   9.071636674223159E-8  
   8.714276996402654E-8
   8.372258807059938E-8
   8.039605692102136E-8 
   7.713769493729783E-8 
   7.392177813930553E-8 
   7.074407069010363E-8
];
 
  x=1.1:0.0005:2.2;
  y=interp1(start_7_lam1,start_7_img,x,'spline');
plot(start_7_lam1,start_7_img,'.w',x,y,'black','LineWidth',2.2);



set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','xtick',[1.2:0.2:2.2])
%set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','ytick',[1.6:0.2:2.6])
xlabel('Frequency(THz)','FontSize',18);
ylabel('Effective Area(m^2)','FontSize',18);
%ylim([1.55 2.6]);
xlim([1.1 2.2]);
set(gca,'FontSize',15); % size of tick marks on both axes
lgnd=legend(' ','Pentanol',' ','Propanol',' ','Ethanol',' ','Methanol');
set(lgnd,'color','none');
grid on