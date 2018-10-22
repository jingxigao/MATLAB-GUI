h=figure('Units','Normalized',...
    'Position',[0.2 0.2 0.5 0.5],...
    'Menu', 'none');

ha=axes('Parent',h,'Units','Normalized',...
    'Position',[0.1 0.1 0.8 0.8]);

h1=line('Parent',ha,'XData',[0:0.01:6],'YData',sin([0:0.01:6]),'Color','r');

cstring='gbkmy';
for k=1:5
    set(h1,'Color',cstring(k));
    pause(3);
end