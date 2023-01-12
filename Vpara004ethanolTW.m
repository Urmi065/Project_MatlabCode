%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%t=3um_ethanol
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
    1.749296860714151
    1.80928045136689         
    1.8615308218732196       
    1.9076654131122408       
    1.9489092788504827       
    1.9862364945863233       
    2.020410945251279        
    2.0520468976888107       
    2.0816862274393806       
    2.1097336756500535       
    2.136571996795472        
    2.162532066244818        
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
   1.7544135454991157
   1.815611508244452        
   1.8692792475995363       
   1.9170589056787866       
   1.960203250695345        
   1.9997180731832882       
   2.0364013626654636       
   2.0709035237775852       
   2.1038280171190142       
   2.1355599369789195       
   2.16658432548202         
   2.197257542289035        
];

  x=1.1:0.0005:2.2;
  y=interp1(start_6_lam1,start_6_img,x,'spline');
plot(start_6_lam1,start_6_img,'.w',x,y,'green','LineWidth',2.2);
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
   1.7600425504642148
   1.8226460251451118       
   1.8779694258893043       
   1.927685941068287        
   1.973082498609619        
   2.0152032548675796       
   2.0548866954413          
   2.092825137752236        
   2.1296503990553686       
   2.165847289727194        
   2.201888231148455        
   2.2381922510314287       
];
 
  x=1.1:0.0005:2.2;
  y=interp1(start_7_lam1,start_7_img,x,'spline');
plot(start_7_lam1,start_7_img,'.w',x,y,'black','LineWidth',2.2);



set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','xtick',[1.1:0.2:2.2])
%set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','ytick',[1.6:0.2:2.6])
xlabel('Frequency(THz)','FontSize',18);
ylabel('V parameter','FontSize',18);
ylim([1.7 2.5]);
xlim([1.1 2.2]);
set(gca,'FontSize',19); % size of tick marks on both axes
lgnd=legend(' ','t=3\mum, W=254\mum',' ','t=5\mum, W=250\mum(optimum)',' ','t=7\mum, W=246\mum');
set(lgnd,'color','none');
grid on