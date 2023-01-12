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
   0.3274903326879881
   0.31180467989556776      
   0.2967829618699985       
   0.28265684594756624      
   0.2695007246212221       
   0.2573022755973961       
   0.24601477787904488      
   0.23557668014575656      
   0.225910120046928        
   0.2169570685124529       
   0.2086509002641159       
   0.20093235411744403      
    
];

for j=1:length(start_1_lam1)    
start_1_los(j,1)=(180/pi)*start_1_img(j,1);
end
  x=1.1:0.0005:2.2;
  y=interp1(start_1_lam1,start_1_los,x,'spline');
plot(start_1_lam1,start_1_los,'.w',x,y,'cyan','LineWidth',2.2);
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
    0.32384056796857513
    0.3088787001461667       
    0.29442207703248807      
    0.2807631323531876       
    0.2680132587496315       
    0.25618374299701285      
    0.24524324278059517      
    0.23514056431502772      
    0.225805464602367        
    0.21718490129398493      
    0.2092163174024304       
    0.20184354374331107      
];

for j=1:length(start_5_lam1)    
start_5_los(j,1)=(180/pi)*start_5_img(j,1);
end 
  x=1.1:0.0005:2.2;
  y=interp1(start_5_lam1,start_5_los,x,'spline');
plot(start_5_lam1,start_5_los,'.w',x,y,'red','LineWidth',2.2);
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
   0.322046610096913
   0.30749186690955865      
   0.29335770249445736      
   0.27996990010258055      
   0.26746030375200097      
   0.2558533520258649       
   0.2451263122679153       
   0.2352337800776336       
   0.22610448037696484      
   0.2177038036714069       
   0.20995543147696888      
   0.20280981501543893      
];

for j=1:length(start_6_lam1)    
start_6_los(j,1)=(180/pi)*start_6_img(j,1);
end 
  x=1.1:0.0005:2.2;
  y=interp1(start_6_lam1,start_6_los,x,'spline');
plot(start_6_lam1,start_6_los,'.w',x,y,'green','LineWidth',2.2);
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
  0.3132013056750669
  0.30106585379390244      
  0.28885864660631216      
  0.2770975078310309       
  0.2660308857588427       
  0.2557563109029613       
  0.24629609253850054      
  0.2376314456477352       
  0.22970707302549462      
  0.22248971601824552      
  0.2159027989270133       
  0.20988734689494953      
];

for j=1:length(start_7_lam1)    
start_7_los(j,1)=(180/pi)*start_7_img(j,1);
end 
  x=1.1:0.0005:2.2;
  y=interp1(start_7_lam1,start_7_los,x,'spline');
plot(start_7_lam1,start_7_los,'.w',x,y,'black','LineWidth',2.2);


set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','xtick',[1.1:0.2:2.2])
%set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','ytick',[4:2:20])
xlabel('Frequency(THz)','FontSize',18);
ylabel('Beam Divergence(degree)','FontSize',18);
ylim([11 19]);
xlim([1.1 2.2]);
set(gca,'FontSize',19); % size of tick marks on both axes
lgnd=legend(' ','Pentanol',' ','Propanol',' ','Ethanol',' ','Methanol');
set(lgnd,'color','none');
grid on