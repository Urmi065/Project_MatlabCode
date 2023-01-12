%%%%%%%%%%%%%%%%%%%%%%%%%%%%t=3um_ethanol
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
    0.0025389111147076223
    0.0022386295017150794    
    0.0019869324411495534    
    0.001775503957425839     
    0.0015971426676430558    
    0.0014458015548541718    
    0.001316633251126013     
    0.0012057622943535194    
    0.0011099727920645165    
    0.0010268567246937944    
    9.54363960781575E-4
    8.908527715531362E-4
];

  x=1.1:0.0005:2.2;
  y=interp1(start_5_lam1,start_5_img,x,'spline');
plot(start_5_lam1,start_5_img,'.w',x,y,'red','LineWidth',2.3);
hold on


%%%%%%%%%%%%%%%%%%%%%%%%%%%t=5um_ethanol
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
   0.0027109091282406196
   0.0023975136339992884    
   0.002133735235425971     
   0.001911427439293642     
   0.0017233896882796777    
   0.0015634948429602558    
   0.0014267902076366456    
   0.001309290975040609     
   0.0012076139217548918    
   0.0011194330515156528    
   0.0010424427594971112    
   9.749859768745741E-4 
];
 
  x=1.1:0.0005:2.2;
  y=interp1(start_6_lam1,start_6_img,x,'spline');
plot(start_6_lam1,start_6_img,'.w',x,y,'green','LineWidth',2.3);
hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%t=7um_ethanol
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
   0.0027927930864452576
   0.0025285041188221886    
   0.002265840993853273     
   0.002037633192715259     
   0.0018424264859942324    
   0.0016754922515077437    
   0.0015322880898829155    
   0.0014089379412520631    
   0.0013021114284859834    
   0.0012092796692848298    
   0.0011282563977283685    
   0.0010572765497244509    
];
 
  x=1.1:0.0005:2.2;
  y=interp1(start_7_lam1,start_7_img,x,'spline');
plot(start_7_lam1,start_7_img,'.w',x,y,'LineWidth',2.3);


set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','xtick',[1.1:0.2:2.2])
xlabel('Frequency(THz)','FontSize',16);
ylabel('Effective material loss(cm^{-1})','FontSize',16);
set(gca,'FontSize',18); % size of tick marks on both axes
legend(' ','t=3\mum, W=254\mum',' ','t=5\mum, W=250\mum(optimum)',' ','t=7\mum, W=246\mum');
set(legend,'color','none');
%ylim([0.003 0.02]);
xlim([1.1 2.2]);
grid on