%%%%%%%%%%%%%%%%%%%%%%%%%%%%t=3um_ethanol
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
    0.4218317634978023
    0.39993878788135573      
    0.3798369481946344       
    0.36144448596943035      
    0.3446428281852393       
    0.32929099610722085      
    0.3152540581535465       
    0.30240735101084026      
    0.29062386425238484      
    0.2798121192392829       
    0.2698775035839095       
    0.26073944073874433      
    ];

  x=1.1:0.0005:2.2;
  y=interp1(start_1_lam1,start_1_img,x,'spline');
plot(start_1_lam1,start_1_img,'.w',x,y,'cyan','LineWidth',2.3);
hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%NA_ethanol
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
    0.42306561934844555
    0.4013382587106056       
    0.3814179794333411       
    0.36322426667354957      
    0.3466400409032954       
    0.3315260584763759       
    0.3177491168906016       
    0.3051862262650709       
    0.2937057748253171       
    0.2832374335326763       
    0.27366846047879234      
    0.26492633874802024      
];

  x=1.1:0.0005:2.2;
  y=interp1(start_5_lam1,start_5_img,x,'spline');
plot(start_5_lam1,start_5_img,'.w',x,y,'LineWidth',2.3);
hold on


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%t=7um_ethanol
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
   0.42442301793784004
   0.40289322834533264      
   0.38319117102494266      
   0.3652377661673997       
   0.34891759197980954      
   0.33409329098651236      
   0.3206334688030668       
   0.30841678460144367      
   0.2973201341882481       
   0.2872544184518894       
   0.2781278140331352       
   0.2698618924125858       
];

  x=1.1:0.0005:2.2;
  y=interp1(start_6_lam1,start_6_img,x,'spline');
plot(start_6_lam1,start_6_img,'.w',x,y,'LineWidth',2.3);

set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','xtick',[1.1:0.2:2.2])
%set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','ytick',[1.54:0.07:1.92])
xlabel('Frequency(THz)','FontSize',18);
ylabel('Numerical Aperture','FontSize',18);
%ylim([1.54 1.92]);
xlim([1.1 2.2]);
set(gca,'FontSize',19); % size of tick marks on both axes
lgnd=legend(' ','t=3\mum, W=254\mum',' ','t=5\mum, W=250\mum(optimum)',' ','t=7\mum, W=246\mum');
set(lgnd,'color','none');
grid on