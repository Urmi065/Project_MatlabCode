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
    1.3286724257013416
    1.3390002367891207       
    1.3474027043704384       
    1.3543216338793038       
    1.360080238843257        
    1.364922319033646        
    1.3690307168654154       
    1.3725449158827123       
    1.3755764301997973       
    1.3782071371986226       
    1.3805052265841493       
    1.382524580649738        
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
    1.2984231434546756
    1.3083443410524949       
    1.3164515055005277       
    1.3231505313690413       
    1.3287418681106862       
    1.3334543325010046       
    1.3374607311646167       
    1.3408936429208604       
    1.3438596450405218       
    1.3464371870723593       
    1.3486918809984123       
    1.3506757073472841       
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
  1.2848723275410223
  1.2945843512385564       
  1.30253916105768         
  1.3091246565207075       
  1.3146297768353827       
  1.3192757072089882       
  1.3232301135314941       
  1.3266220221945144       
  1.3295571069053933       
  1.3321071168253475       
  1.3343412603205176       
  1.3363088947492665       
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
   1.2305576739651618
   1.239209153135565        
   1.2463876435995014       
   1.2523943795580275       
   1.2574619177768132       
   1.261773557988086        
   1.2654712003806534       
   1.2686659546378443       
   1.2714505622595649       
   1.273888067852976        
   1.2760408034678592       
   1.2779534057969701       
];
 
  x=1.1:0.0005:2.2;
  y=interp1(start_7_lam1,start_7_img,x,'spline');
plot(start_7_lam1,start_7_img,'.w',x,y,'LineWidth',2.2);


set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','xtick',[1.1:0.2:2.2])
set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','ytick',[1.2:0.025:1.4])
xlabel('Frequency(THz)','FontSize',16);
ylabel('Effective RI','FontSize',16);
set(gca,'FontSize',18); % size of tick marks on both axes
legend(' ','Pentanol',' ','Propanol',' ','Ethanol',' ','Methanol');
set(legend,'color','none');
%ylim([0.003 0.02]);
xlim([1.1 2.2]);
grid on