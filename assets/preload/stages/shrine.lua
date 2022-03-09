function onCreate()
	-- background shit
	makeLuaSprite('shrine_sky', 'shrine/shrine_sky', -600, -250);
	setScrollFactor('shrine_sky', 0.1, 0.1);
	
	makeLuaSprite('shrine_forest', 'shrine/shrine_forest', -600, -350);
	setScrollFactor('shrine_forest', 0.3, 0.3);
	
	makeLuaSprite('shrine_warehouse', 'shrine/shrine_warehouse', -600, -250);
	setScrollFactor('shrine_warehouse', 0.8, 0.8);
	
	makeLuaSprite('shrine_ground', 'shrine/shrine_ground', -600, -250);
	setScrollFactor('shrine_ground', 0.95, 0.95);
	
	makeLuaSprite('shrine_treesback', 'shrine/shrine_treesback', -600, -250);
	setScrollFactor('shrine_treesback', 0.9, 0.9);
	
	makeLuaSprite('shrine_treesbody', 'shrine/shrine_treesbody', -600, -250);
	setScrollFactor('shrine_treesbody', 0.95, 0.95);

	makeLuaSprite('shrine_treesfront', 'shrine/shrine_treesfront', -600, -250);
	setScrollFactor('shrine_treesfront', 0.97, 0.97);


	addLuaSprite('shrine_sky', false);
	addLuaSprite('shrine_forest', false);
	addLuaSprite('shrine_warehouse', false);
	addLuaSprite('shrine_ground', false);
	addLuaSprite('shrine_treesback', false);
	addLuaSprite('shrine_treesbody', false);
	addLuaSprite('shrine_treesfront', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end