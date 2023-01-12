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
    0.07261835526
    0.03919417439
    0.0198260269
    0.008824123205
    0.002996069321
    4.57291154e-4
    5.47205373e-5
    0.001058632913
    0.002997828987
    0.005558463761
    0.008531616623
    0.01177612737
];

  x=1.1:0.0005:2.2;
  y=interp1(start_1_lam1,start_1_img,x,'spline');
plot(start_1_lam1,start_1_img,'.w',x,y,'cyan','LineWidth',2.3);
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
    0.08670425742
    0.047913645
    0.02510226175
    0.0118171219
    0.004467920379
    9.53246625e-4
    3.37044792e-7
    8.13898426e-4
    0.002889419005
    0.005900068589
    0.009637527871
    0.01397114713
];

  x=1.1:0.0005:2.2;
  y=interp1(start_5_lam1,start_5_img,x,'spline');
plot(start_5_lam1,start_5_img,'.w',x,y,'red','LineWidth',2.3);
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
  0.09413478059
  0.05237789554
  0.02769729813
  0.01320636248
  0.005091972505
  0.001134685786
  2.06374815e-7
  8.63543093e-4
  0.003211801863
  0.006714730946
  0.0111799595
  0.01649174854
];
 
  x=1.1:0.0005:2.2;
  y=interp1(start_6_lam1,start_6_img,x,'spline');
plot(start_6_lam1,start_6_img,'.w',x,y,'green','LineWidth',2.3);
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
   0.1358227382
   0.07592342528       
   0.04018478911         
   0.01891794792       
   0.006900521599        
   0.001191021608       
   9.75739912e-5       
   0.002634399148        
   0.008239866505       
   0.01657070115       
   0.02744978041       
   0.04074668777       
];
 
  x=1.1:0.0005:2.2;
  y=interp1(start_7_lam1,start_7_img,x,'spline');
plot(start_7_lam1,start_7_img,'.w',x,y,'LineWidth',2.3);


set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','xtick',[1.1:0.2:2.2])
set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','ytick',[0:0.025:0.15])
xlabel('Frequency(THz)','FontSize',16);
ylabel('Splice Loss(dB)','FontSize',16);
set(gca,'FontSize',18); % size of tick marks on both axes
legend(' ','Pentanol',' ','Propanol',' ','Ethanol',' ','Methanol');
set(legend,'color','none');
%ylim([0.0 0.02]);
xlim([1.1 2.2]);
grid on