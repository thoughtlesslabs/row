pico-8 cartridge // http://www.pico-8.com
version 32
__lua__
-- row
-- a thoughtless labs experiment

function _init()
	create_canoe()
	waterspeed = 0.02
end

function _update60()
	create_water()
	move_canoe()
end

function _draw()
	cls()
	draw_water()
	rectfill(0,90,127,127,12)
	draw_canoe()
	print(waterspeed)
end

-->8
-- update functions

function create_water()
	if btnp(4) then
		waterspeed = -waterspeed
	end
end	

function create_canoe()
	canoe = {}
	canoe.x = 10 
	canoe.y = 100
	canoe.dx= 0
	canoe.dy= 0
end

function move_canoe()
	if btnp(1) then
		canoe.dx += 2
	end
	if btnp(0) then
		canoe.dx -= 2
	end
	
	canoe.dx = canoe.dx/1.05
	canoe.dx -= waterspeed 
	canoe.x += canoe.dx
end

function create_sky()
	for i=0,30 do
		addsky(
end
-->8
-- draw functions

function draw_water()
	for i=0,10 do
		circfill(10,10,3,7)
	end
end

function draw_canoe()
	local x=canoe.x y=canoe.y
	ovalfill(x-5,y+6,x+20,y+8,1)
	spr(1,x,y)

	sspr(8,1,8,6,x+8,y+1,8,6,true)

end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000045000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700444555550000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000444444440000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000444444440000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700444444440000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000044444440000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
