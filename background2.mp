beginfig(1);
gwidth=266.5mm;
gheight=85mm;
largethickness=0.3mm;
thinthickness=0.2mm;
sep=1mm;
widthfirst=21.5mm;
widthsecond=9.5mm;
hoffset=9mm;
voffset=5mm;
pickup pensquare scaled largethickness;
draw (0,0) -- (gwidth, 0) -- (gwidth, gheight) -- (0, gheight) -- (0,0);
pickup pensquare scaled thinthickness;
draw (sep,sep) -- (gwidth-sep, sep) -- (gwidth-sep, gheight-sep) -- (sep, gheight-sep) -- (sep,sep);
draw (sep+hoffset, sep+voffset) -- (gwidth - sep - hoffset, sep+voffset) -- (gwidth - sep - hoffset, gheight - sep - voffset) -- (sep+hoffset, gheight - sep - voffset) -- (sep+hoffset, sep+voffset);
draw (2 * sep + hoffset , 2*sep+voffset) -- (2*sep+hoffset+widthfirst, 2*sep+voffset) -- (2*sep+hoffset+widthfirst, gheight - 2*sep - voffset) -- (2*sep+hoffset, gheight - 2*sep-voffset) -- (2*sep+hoffset,2*sep+voffset);
draw (3 * sep + hoffset +widthfirst, 2*sep+voffset) -- (3 * sep + hoffset +widthfirst+widthsecond, 2*sep+voffset) -- (3 * sep + hoffset +widthfirst+widthsecond, gheight - 2*sep - voffset) -- (3 * sep + hoffset +widthfirst, gheight - 2*sep-voffset) -- (3 * sep + hoffset +widthfirst,2*sep+voffset);
draw (gwidth - 2 * sep - hoffset, 2*sep+voffset) -- (gwidth - 2*sep-hoffset-widthfirst, 2*sep+voffset) -- (gwidth - 2*sep-hoffset-widthfirst, gheight - 2*sep - voffset) -- (gwidth - 2 * sep - hoffset, gheight - 2*sep-voffset) -- (gwidth - 2 * sep - hoffset,2*sep+voffset);
draw (gwidth - 3 * sep - hoffset - widthfirst, 2*sep+voffset) -- (gwidth - 3 * sep - hoffset - widthfirst-widthsecond, 2*sep+voffset) -- (gwidth - 3 * sep - hoffset - widthfirst-widthsecond, gheight - 2*sep - voffset) -- (gwidth - 3 * sep - hoffset - widthfirst, gheight - 2*sep-voffset) -- (gwidth - 3 * sep - hoffset - widthfirst, 2*sep+voffset);
draw (4*sep + hoffset + widthfirst + widthsecond, 2*sep+voffset) -- (gwidth - 4*sep - hoffset - widthfirst - widthsecond, 2*sep+voffset) -- (gwidth - 4*sep - hoffset - widthfirst - widthsecond, gheight - 2*sep - voffset) -- (4*sep + hoffset + widthfirst + widthsecond, gheight - 2*sep-voffset) -- (4*sep + hoffset + widthfirst + widthsecond, 2*sep+voffset);
endfig;
end;



