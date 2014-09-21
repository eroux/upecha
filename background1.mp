beginfig(1);
gwidth=266.5mm;
gheight=85mm;
largethickness=0.3mm;
thinthickness=0.2mm;
sep=1.2mm;
widthfirst=7.8mm;
pickup pensquare scaled largethickness;
draw (0,0) -- (gwidth, 0) -- (gwidth, gheight) -- (0, gheight) -- (0,0);
pickup pensquare scaled thinthickness;
draw (sep, sep) -- (widthfirst+sep, sep) -- (widthfirst+sep,gheight-sep) -- (sep, gheight-sep) -- (sep, sep);
draw (2*sep + widthfirst, sep) -- (gwidth - 2 * sep - widthfirst, sep) -- (gwidth - 2 * sep - widthfirst, gheight - sep) -- (2*sep + widthfirst, gheight - sep) -- (2*sep + widthfirst, sep);
draw (gwidth - sep - widthfirst, sep) -- (gwidth - sep, sep) -- (gwidth -sep, gheight -sep) -- (gwidth - sep - widthfirst, gheight -sep) -- (gwidth - sep - widthfirst, sep);
endfig;
end;








