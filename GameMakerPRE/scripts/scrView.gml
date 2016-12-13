///scrView(amount, view, x)
var amount = 1+argument[0];
var view = argument[1];
if (view_wview[view] <= 320 and amount < 1) exit; 
if (view_hview[view] <= 180 and amount < 1) exit;
if (view_wview[view] >= 640 and amount > 1) exit;
if (view_hview[view] >= 360 and amount > 1) exit;
var offx  = abs(view_wview[view]*amount - view_wview[view]);
var offy  = abs(view_hview[view]*amount - view_hview[view]);
view_wview[view] *= amount;
view_hview[view] *= amount;
if amount < 1
{
    view_xview[view] += offx/2
    view_yview[view] += offy/2
}else if amount > 1
{
    view_xview[view] -= offx/2
    view_yview[view] -= offy/2
}
