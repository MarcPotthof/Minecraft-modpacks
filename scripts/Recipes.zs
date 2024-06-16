import mods.botania.recipe.manager.ManaInfusionRecipeManager;
import mods.botania.recipe.manager.PetalApothecaryRecipeManager;
import mods.botania.recipe.manager.TerraPlateRecipeManager;
//import mods.iceandfire.recipe.DragonForgeRecipeManager;

<recipetype:minecraft:crafting>;
<recipetype:botania:mana_infusion>;

//general recipes
<recipetype:create:crushing>.addRecipe("crush_to_diamond", [<item:minecraft:diamond> % 5, <item:mekanism:dust_coal> * 5], <item:minecraft:coal_block>, 200);
<recipetype:botania:terra_plate>.addRecipe("psidust_new", <item:psi:psidust>, 50, <item:minecraft:redstone>, <item:ae2:certus_quartz_dust>);
<recipetype:botania:terra_plate>.addRecipe("psimetal_new", <item:psi:psimetal>, 100, <item:minecraft:iron_ingot>, <item:ae2:certus_quartz_dust>);
<recipetype:botania:terra_plate>.addRecipe("psigem_new", <item:psi:psigem>, 300, <item:minecraft:diamond>, <item:psi:psidust>);


//tier 1 mods: mekanism, ae2, mana and artifice
craftingTable.remove(<item:mekanism:metallurgic_infuser>);
craftingTable.addShaped("metallurgic_infuser_new", 
				<item:mekanism:metallurgic_infuser>,[
				[<item:minecraft:iron_ingot>,<item:minecraft:furnace>,<item:minecraft:iron_ingot>],
				[<item:minecraft:redstone>,<item:mekanism:ingot_osmium>,<item:minecraft:redstone>],
				[<item:psi:ebony_psimetal>,<item:minecraft:furnace>,<item:psi:ivory_psimetal>]]);

craftingTable.remove(<item:ae2:controller>);
craftingTable.addShaped("me_controller_new",
				<item:ae2:controller>,[
				[<item:create:brass_ingot>,<item:ae2:fluix_crystal>,<item:create:brass_ingot>],
				[<item:psi:ivory_psimetal>,<item:ae2:engineering_processor>,<item:psi:ivory_psimetal>],
				[<item:create:brass_ingot>,<item:ae2:fluix_crystal>,<item:create:brass_ingot>]]);

craftingTable.remove(<item:mna:spell_book>);
craftingTable.addShaped("mna_spell_book_new",
				<item:mna:spell_book>,[
				[<item:create:brass_ingot>,<item:minecraft:leather>,<item:minecraft:leather>],
				[<item:minecraft:string>,<item:psi:psigem>,<item:minecraft:paper>],
				[<item:create:brass_ingot>,<item:minecraft:leather>,<item:minecraft:leather>]]);

//tier 2 mods: botania, immersive engineering
<recipetype:botania:petal_apothecary>.remove(<item:botania:pure_daisy>);
<recipetype:botania:petal_apothecary>.addRecipe("pure_daisy_new", 
				<item:botania:pure_daisy>, 
				<item:botania:white_petal>,
				<item:botania:white_petal>,
				<item:botania:white_petal>,
				<item:botania:white_petal>,
				<item:mekanism:alloy_atomic>,
				<item:ae2:formation_core>,
				<item:ae2:annihilation_core>);

craftingTable.remove(<item:immersiveengineering:hammer>);
craftingTable.addShaped("immersive_hammer_new",
				<item:immersiveengineering:hammer>,[
				[<item:minecraft:air>,<item:botania:terrasteel_ingot>,<item:mekanism:ingot_steel>],
				[<item:minecraft:air>,<item:minecraft:stick>,<item:botania:terrasteel_ingot>],
				[<item:minecraft:stick>]]);

<recipetype:botania:mana_infusion>.remove(<item:botania:mana_pearl>);
<recipetype:botania:mana_infusion>.remove(<item:botania:mana_diamond>);
<recipetype:botania:mana_infusion>.addRecipe("mana_pearl_new", <item:botania:mana_pearl>, <item:ae2:fluix_pearl>, 200);
<recipetype:botania:mana_infusion>.addRecipe("mana_diamond_new", <item:botania:mana_diamond>, <item:psi:psigem>, 200);

//tier 3 mods: mahou, ice and fire, blood magic, tconstruct
craftingTable.remove(<item:tconstruct:grout>);
craftingTable.remove(<item:mahoutsukai:hammer>);
craftingTable.remove(<item:mahoutsukai:mortar>);
craftingTable.remove(<item:mahoutsukai:pestle>);
craftingTable.remove(<item:mahoutsukai:powdered_iron>);
craftingTable.remove(<item:mahoutsukai:powdered_emerald>);
craftingTable.remove(<item:mahoutsukai:powdered_quartz>);
craftingTable.remove(<item:mahoutsukai:powdered_eye>);
craftingTable.remove(<item:mahoutsukai:powdered_gold>);
craftingTable.remove(<item:mahoutsukai:powdered_diamond>);
craftingTable.remove(<item:mahoutsukai:powdered_ender>);
craftingTable.addShapeless("grout_new", <item:tconstruct:grout>, [<item:mekanism:ingot_steel>, <item:minecraft:sand>,<item:minecraft:sand>,<item:minecraft:sand>, <item:minecraft:gravel>,<item:minecraft:gravel>, <item:minecraft:clay>]);
craftingTable.addShapeless("powdered_iron_new",<item:mahoutsukai:powdered_iron>, [<item:mahoutsukai:mortar_and_pestle>.reuse(),<item:alexsmobs:void_worm_eye>.reuse(), <item:psi:psimetal>]); 
craftingTable.addShapeless("powdered_diamond_new",<item:mahoutsukai:powdered_diamond>, [<item:mahoutsukai:mortar_and_pestle>.reuse(),<item:alexsmobs:void_worm_eye>.reuse(), <item:psi:psigem>]);
craftingTable.addShapeless("powdered_emerald_new",<item:mahoutsukai:powdered_emerald>, [<item:mahoutsukai:mortar_and_pestle>.reuse(),<item:alexsmobs:void_worm_eye>.reuse(), <item:botania:mana_diamond>]);
craftingTable.addShapeless("powdered_quartz_new",<item:mahoutsukai:powdered_quartz>, [<item:mahoutsukai:mortar_and_pestle>.reuse(),<item:alexsmobs:void_worm_eye>.reuse(), <item:psi:ivory_psimetal>]);
craftingTable.addShapeless("powdered_ender_new",<item:mahoutsukai:powdered_ender>, [<item:mahoutsukai:mortar_and_pestle>.reuse(),<item:alexsmobs:void_worm_eye>.reuse(), <item:botania:mana_pearl>]);
craftingTable.addShapeless("powdered_eye_new",<item:mahoutsukai:powdered_eye>, [<item:mahoutsukai:mortar_and_pestle>.reuse(),<item:alexsmobs:void_worm_eye>.reuse(), <item:ae2:fluix_pearl>]);
craftingTable.addShapeless("powdered_gold_new",<item:mahoutsukai:powdered_gold>, [<item:mahoutsukai:mortar_and_pestle>.reuse(),<item:alexsmobs:void_worm_eye>.reuse(), <item:immersiveengineering:ingot_electrum>]);



craftingTable.addShaped("mahou_mortar_new",
				<item:mahoutsukai:mortar>,[
				[],
				[<item:immersiveengineering:component_electronic_adv>, <item:minecraft:air>, <item:immersiveengineering:component_electronic_adv>], 
				[<item:minecraft:air>, <item:botania:life_essence>]]);
craftingTable.addShaped("mahou_pestle_new2",
				<item:mahoutsukai:pestle>,[
				[<item:minecraft:air>, <item:minecraft:air>, <item:immersiveengineering:graphite_electrode>],
				[<item:mna:superheated_vinteum_ingot>, <item:immersiveengineering:graphite_electrode>],
				[<item:mekanism:alloy_atomic>, <item:mna:superheated_vinteum_ingot>]]);


//tier 4 items: dragonsteel, tiaras, fission and fusion reactor, entangloporter
//craftingTable.remove(<item:botania:flight_tiara>.withTag({"variant": 0 as int}));
//<recipetype:iceandfire:dragonforge>.remove(<item:iceandfire:dragonsteel_lightning_ingot>);
//<recipetype:iceandfire:dragonforge>.remove(<item:iceandfire:dragonsteel_ice_ingot>);
//<recipetype:iceandfire:dragonforge>.remove(<item:iceandfire:dragonsteel_fire_ingot>);

//tier 5 items: meka armour, creative mana pool, energy source, etc



