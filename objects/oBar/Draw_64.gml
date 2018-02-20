/// @description Insert description here
// You can write your code in this editor
//坐标跟随GUI变化而变化
x = display_get_gui_width()/2-162;
y = display_get_gui_height()-44;

//玩家死亡则不绘制（非必需）
if(!instance_exists(oPlayer))
{
	exit;
}


//定义绘制能量的数值线性变换
draw_energy = lerp(draw_energy,oPlayer.energy,0.25);

//定义临时变量透明度（用于绘制闪烁效果）
var alpha_ = 1;

//如果能量大于总量的1/3，则显示$71CBBC颜色（BGR，与传统的RGB色值相反）
if (oPlayer.energy > oPlayer.energy_max/3)	draw_set_color($71CBBC);
//else if (oPlayer.energy > oPlayer.energy_max/6) draw_set_color(c_yellow);
else {
	//能量低于1/3后显示$0D3C5C,同样是BGR）
	draw_set_color($0D3C5C);
	//透明度波动模拟闪烁
	alpha_ = wave(1,0.1,0.1,0);
}
//自定义绘制矩形的脚本
draw_rectangle_custom(x,y,307*draw_energy/oPlayer.energy_max,18,alpha_,false)

//透明度及颜色复位
draw_set_alpha(1)
draw_set_color(c_white)
//绘制能量条外框
draw_sprite(energy_meter,0,x,y);