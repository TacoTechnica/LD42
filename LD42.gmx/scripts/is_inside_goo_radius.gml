/// is_inside_goo_radius(x, y);
// Whether that position is within the goo's sphere of influence.

var xa = argument0,
    ya = argument1;

var distSqr = sqr(xa - objGooSystem._gooOriginX) + sqr(ya - objGooSystem._gooOriginY);

return distSqr <= sqr(objGooSystem._gooRadius);
