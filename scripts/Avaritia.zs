import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
#modloaded avaritia


# *======= Recipes =======*

# Neutronium Ingots with Neutron Fluid
	mods.nuclearcraft.infuser.addRecipe(<advancedrocketry:productingot:1>, <liquid:neutron> * 1000, <avaritia:resource:4>, 4500);
	mods.thermalexpansion.Transposer.addFillRecipe(<avaritia:resource:4>, <advancedrocketry:productingot:1>, <liquid:neutron> * 1000, 250000);

# Neutron block fix
	recipes.remove(<avaritia:resource:4>);
	recipes.addShaped("Neutron Ingots from Nuggets",
	<avaritia:resource:4>, 
	[[<avaritia:resource:3>, <avaritia:resource:3>, <avaritia:resource:3>],
	[<avaritia:resource:3>, <avaritia:resource:3>, <avaritia:resource:3>], 
	[<avaritia:resource:3>, <avaritia:resource:3>, <avaritia:resource:3>]]);
	recipes.addShapeless("Neutron Ingots from Block", <avaritia:resource:4> * 9, [<avaritia:block_resource>]);

	mods.avaritia.ExtremeCrafting.remove(<avaritia:ultimate_stew>);
	mods.avaritia.ExtremeCrafting.remove(<avaritia:cosmic_meatballs>);
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_helmet>);
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_chestplate>);
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_pants>);
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_boots>);
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_sword>);
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_bow>);
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_pickaxe>);
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_shovel>);
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_axe>);
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_hoe>);

# Infinity Ingot
	mods.avaritia.ExtremeCrafting.remove(<avaritia:resource:6>);
	mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:resource:6>, [
	[<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <avaritia:resource:5>, <extendedcrafting:singularity_ultimate>, <avaritia:resource:5>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotCrystalMatrix>, <avaritia:resource:5>, <avaritia:resource:5>, <extendedcrafting:singularity_ultimate>, <avaritia:resource:5>, <avaritia:resource:5>, <ore:ingotCrystalMatrix>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>], 
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null]
	]);

# Neutron Collector
  if (!isNull(itemUtils.getItem("appliedenergistics2:controller"))) {
	  mods.avaritia.ExtremeCrafting.remove(<avaritia:neutron_collector>);
	  mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:neutron_collector>, [
	  [<environmentaltech:mica>, <ore:ingotCrystalMatrix>, <environmentaltech:mica>, <ore:ingotCrystalMatrix>, <environmentaltech:mica>, <ore:ingotCrystalMatrix>, <environmentaltech:mica>, <ore:ingotCrystalMatrix>, <environmentaltech:mica>], 
	  [<environmentaltech:mica>, null, <nuclearcraft:helium_collector_dense>, <nuclearcraft:helium_collector_dense>, <nuclearcraft:helium_collector_dense>, <nuclearcraft:helium_collector_dense>, <nuclearcraft:helium_collector_dense>, null, <environmentaltech:mica>], 
	  [<environmentaltech:mica>, null, <forestry:chipsets:3>.withTag({T:3 as short}, false), <ore:circuitUltimate>, <advancedrocketry:ic:2>, <ore:circuitUltimate>, <forestry:chipsets:3>.withTag({T:3 as short}, false), null, <environmentaltech:mica>], 
	  [<ore:ingotCrystalMatrix>, null, <ore:circuitUltimate>, <advgenerators:controller>, <advgenerators:controller>, <advgenerators:controller>, <ore:circuitUltimate>, null, <ore:ingotCrystalMatrix>], 
	  [null, null, <advancedrocketry:ic:2>, <advgenerators:controller>, itemUtils.getItem("appliedenergistics2:controller"), <advgenerators:controller>, <advancedrocketry:ic:2>, null, null], 
	  [<ore:ingotCrystalMatrix>, null, <ore:circuitUltimate>, <advgenerators:controller>, <advgenerators:controller>, <advgenerators:controller>, <ore:circuitUltimate>, null, <ore:ingotCrystalMatrix>], 
	  [<actuallyadditions:block_heat_collector>, null, <forestry:chipsets:3>.withTag({T:3 as short}, false), <ore:circuitUltimate>, <advancedrocketry:ic:2>, <ore:circuitUltimate>, <forestry:chipsets:3>.withTag({T:3 as short}, false), null, <actuallyadditions:block_heat_collector>], 
	  [<actuallyadditions:block_heat_collector>, <actuallyadditions:block_heat_collector>, null, null, null, null, null, <actuallyadditions:block_heat_collector>, <actuallyadditions:block_heat_collector>], 
	  [<actuallyadditions:block_heat_collector>, <actuallyadditions:block_heat_collector>, <actuallyadditions:block_heat_collector>, <ore:ingotCrystalMatrix>, <actuallyadditions:block_heat_collector>, <ore:ingotCrystalMatrix>, <actuallyadditions:block_heat_collector>, <actuallyadditions:block_heat_collector>, <actuallyadditions:block_heat_collector>]
		]);
	} else {
	  mods.avaritia.ExtremeCrafting.remove(<avaritia:neutron_collector>);
	  mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:neutron_collector>, [
	  [<environmentaltech:mica>, <ore:ingotCrystalMatrix>, <environmentaltech:mica>, <ore:ingotCrystalMatrix>, <environmentaltech:mica>, <ore:ingotCrystalMatrix>, <environmentaltech:mica>, <ore:ingotCrystalMatrix>, <environmentaltech:mica>], 
	  [<environmentaltech:mica>, null, <nuclearcraft:helium_collector_dense>, <nuclearcraft:helium_collector_dense>, <nuclearcraft:helium_collector_dense>, <nuclearcraft:helium_collector_dense>, <nuclearcraft:helium_collector_dense>, null, <environmentaltech:mica>], 
	  [<environmentaltech:mica>, null, <forestry:chipsets:3>.withTag({T:3 as short}, false), <ore:circuitUltimate>, <advancedrocketry:ic:2>, <ore:circuitUltimate>, <forestry:chipsets:3>.withTag({T:3 as short}, false), null, <environmentaltech:mica>], 
	  [<ore:ingotCrystalMatrix>, null, <ore:circuitUltimate>, <advgenerators:controller>, <advgenerators:controller>, <advgenerators:controller>, <ore:circuitUltimate>, null, <ore:ingotCrystalMatrix>], 
	  [null, null, <advancedrocketry:ic:2>, <advgenerators:controller>, <appliedenergistics2:energy_acceptor>, <advgenerators:controller>, <advancedrocketry:ic:2>, null, null], 
	  [<ore:ingotCrystalMatrix>, null, <ore:circuitUltimate>, <advgenerators:controller>, <advgenerators:controller>, <advgenerators:controller>, <ore:circuitUltimate>, null, <ore:ingotCrystalMatrix>], 
	  [<actuallyadditions:block_heat_collector>, null, <forestry:chipsets:3>.withTag({T:3 as short}, false), <ore:circuitUltimate>, <advancedrocketry:ic:2>, <ore:circuitUltimate>, <forestry:chipsets:3>.withTag({T:3 as short}, false), null, <actuallyadditions:block_heat_collector>], 
	  [<actuallyadditions:block_heat_collector>, <actuallyadditions:block_heat_collector>, null, null, null, null, null, <actuallyadditions:block_heat_collector>, <actuallyadditions:block_heat_collector>], 
	  [<actuallyadditions:block_heat_collector>, <actuallyadditions:block_heat_collector>, <actuallyadditions:block_heat_collector>, <ore:ingotCrystalMatrix>, <actuallyadditions:block_heat_collector>, <ore:ingotCrystalMatrix>, <actuallyadditions:block_heat_collector>, <actuallyadditions:block_heat_collector>, <actuallyadditions:block_heat_collector>]
		]);
	}

# Neutronium Compressor isn't used
	mods.avaritia.ExtremeCrafting.remove(<avaritia:neutronium_compressor>);

# Infinity Catalyst
	mods.avaritia.ExtremeCrafting.remove(<avaritia:resource:5>);
	mods.extendedcrafting.TableCrafting.addShapeless(0, <avaritia:resource:5>, 
	[<ore:ingotCrystalMatrix>, <ore:ingotCosmicNeutronium>, <avaritia:cosmic_meatballs>, 
	<avaritia:ultimate_stew>, <avaritia:endest_pearl>, <ore:record>, 
	<draconicevolution:awakened_core>, <ore:blockDraconiumAwakened>, 
	<ore:blockStellarAlloy>, <contenttweaker:benitoite>, <contenttweaker:anglesite>, 
	<ore:dragonEgg>, <extendedcrafting:storage:7>, <ore:blockAethium>, 
	<ore:plateElite>, <ore:blockTitaniumAluminide>, <ore:blockTitaniumIridium>, 
	<ore:blockEvilMetal>, <ore:blockDemonicMetal>, <ore:blockMirion>, 
	<biomesoplenty:terrestrial_artifact>, <extendedcrafting:singularity>, <extendedcrafting:singularity:1>, 
	<extendedcrafting:singularity:2>, <extendedcrafting:singularity:3>, <extendedcrafting:singularity:4>, <extendedcrafting:singularity:5>, 
	<extendedcrafting:singularity:6>, <extendedcrafting:singularity:7>, <extendedcrafting:singularity:16>, 
	<extendedcrafting:singularity:17>, <extendedcrafting:singularity:18>, <extendedcrafting:singularity:19>,
	<extendedcrafting:singularity:22>, <extendedcrafting:singularity_custom:107>, <extendedcrafting:singularity_custom:100>, 
	<extendedcrafting:singularity:65>, <extendedcrafting:singularity_custom:101>, <extendedcrafting:singularity:48>, 
	<extendedcrafting:singularity:49>, <extendedcrafting:singularity:64>, <extendedcrafting:singularity:25>, 
	<extendedcrafting:singularity:26>, <extendedcrafting:singularity:27>, <extendedcrafting:singularity:28>, 
	<extendedcrafting:singularity:32>, <extendedcrafting:singularity:23>, <extendedcrafting:singularity:24>]);

# Endest Pearl
	mods.avaritia.ExtremeCrafting.remove(<avaritia:endest_pearl>);
	mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:endest_pearl>, [
	[null, null, null, <ore:endstone>, <ore:endstone>, <ore:endstone>, null, null, null], 
	[null, null, <ore:endstone>, <extrautils2:endershard>, <cyclicmagic:ender_eye_orb>, <extrautils2:endershard>, <ore:endstone>, null, null], 
	[null, <ore:endstone>, <darkutils:material:1>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <darkutils:material:1>, <ore:endstone>, null], 
	[<ore:endstone>, <extrautils2:endershard>, <ore:enderpearl>, <ore:enderpearl>, <actuallyadditions:block_misc:8>, <ore:enderpearl>, <ore:enderpearl>, <extrautils2:endershard>, <ore:endstone>], 
	[<ore:endstone>, <cyclicmagic:ender_eye_orb>, <ore:enderpearl>, <actuallyadditions:block_misc:8>, <actuallyadditions:item_misc:19>, <actuallyadditions:block_misc:8>, <ore:enderpearl>, <cyclicmagic:ender_eye_orb>, <ore:endstone>], 
	[<ore:endstone>, <extrautils2:endershard>, <ore:enderpearl>, <ore:enderpearl>, <actuallyadditions:block_misc:8>, <ore:enderpearl>, <ore:enderpearl>, <extrautils2:endershard>, <ore:endstone>], 
	[null, <ore:endstone>, <darkutils:material:1>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <darkutils:material:1>, <ore:endstone>, null], 
	[null, null, <ore:endstone>, <extrautils2:endershard>, <cyclicmagic:ender_eye_orb>, <extrautils2:endershard>, <ore:endstone>, null, null], 
	[null, null, null, <ore:endstone>, <ore:endstone>, <ore:endstone>, null, null, null]
	]);

# Skullfire Sword
 	mods.avaritia.ExtremeCrafting.remove(<avaritia:skullfire_sword>);
	mods.extendedcrafting.TableCrafting.addShaped(0, <avaritia:skullfire_sword>, [
	[null, <tconstruct:shard>.withTag({Material: "refinedobsidian"}), null, null, <bloodmagic:lava_crystal>], 
	[null, null, null, <randomthings:obsidianskull>, null], 
	[null, <tconstruct:wide_guard>.withTag({Material: "bone"}), <tconstruct:cleaver>.withTag({TinkerData: {Materials: ["firewood", "firewood", "firewood", "firewood"]}}), null, null], 
	[null, <tconstruct:tough_tool_rod>.withTag({Material: "bone"}), <tconstruct:wide_guard>.withTag({Material: "bone"}), null, <tconstruct:shard>.withTag({Material: "refinedobsidian"})], 
	[<ore:netherStar>, null, null, null, null]
]);

		
# Ultimate Stew
	mods.extendedcrafting.TableCrafting.addShaped(4, <avaritia:ultimate_stew>*9, [
	[null, null, null, null, <avaritia:cosmic_meatballs>, null, null, null, null], 
	[null, <ore:blockIron>, <ore:foodCornedbeefbreakfast>, <ore:foodCornedbeefbreakfast>, <ore:foodCornedbeefbreakfast>, <ore:foodCornedbeefbreakfast>, <ore:foodCornedbeefbreakfast>, <ore:blockIron>, null], 
	[<ore:blockIron>, <ore:foodMinerstew>, <ore:foodSouthernstylebreakfast>, <ore:foodSouthernstylebreakfast>, <ore:foodSouthernstylebreakfast>, <ore:foodSouthernstylebreakfast>, <ore:foodSouthernstylebreakfast>, <ore:foodMinerstew>, <ore:blockIron>], 
	[<ore:blockIron>, <ore:foodMinerstew>, <ore:foodThankfuldinner>, <ore:foodThankfuldinner>, <ore:foodThankfuldinner>, <ore:foodThankfuldinner>, <ore:foodThankfuldinner>, <ore:foodMinerstew>, <ore:blockIron>], 
	[<ore:blockIron>, <ore:foodMinerstew>, <ore:foodKoreandinner>, <ore:foodKoreandinner>, <ore:foodKoreandinner>, <ore:foodKoreandinner>, <ore:foodKoreandinner>, <ore:foodMinerstew>, <ore:blockIron>], 
	[<ore:blockIron>, <ore:foodMinerstew>, <ore:foodGourmetvenisonburger>, <ore:foodGourmetvenisonburger>, <ore:foodGourmetvenisonburger>, <ore:foodGourmetvenisonburger>, <ore:foodGourmetvenisonburger>, <ore:foodMinerstew>, <ore:blockIron>], 
	[<ore:dustMana>, <ore:blockIron>, <ore:foodMeatfeastpizza>, <ore:foodMeatfeastpizza>, <ore:foodMeatfeastpizza>, <ore:foodMeatfeastpizza>, <ore:foodMeatfeastpizza>, <ore:blockIron>, <ore:dustMana>], 
	[<ore:dustMana>, <ore:dustMana>, <ore:blockIron>, <ore:blockIron>, <ore:blockIron>, <ore:blockIron>, <ore:blockIron>, <ore:dustMana>, <ore:dustMana>], 
	[null, <ore:dustMana>, <ore:dustMana>, <tconstruct:firewood:1>, <tconstruct:firewood:1>, <tconstruct:firewood:1>, <ore:dustMana>, <ore:dustMana>, null]
]);

# Cosmic Meatballs
	mods.extendedcrafting.TableCrafting.addShaped(4, <avaritia:cosmic_meatballs> * 9, [
	[null, null, null, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, null, null, null], 
	[null, null, <ore:dustAstralStarmetal>, <ore:foodPorkrinds>, <thaumcraft:triple_meat_treat>, <ore:foodPorkrinds>, <ore:dustAstralStarmetal>, null, null], 
	[null, null, <ore:dustAstralStarmetal>, <thaumcraft:triple_meat_treat>, <ore:ingotCosmicNeutronium>, <thaumcraft:triple_meat_treat>, <ore:dustAstralStarmetal>, null, null], 
	[null, null, <ore:dustAstralStarmetal>, <ore:foodPorkrinds>, <thaumcraft:triple_meat_treat>, <ore:foodPorkrinds>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, null], 
	[null, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:ingotCrystalMatrix>, <extendedcrafting:material:40>, <ore:ingotCrystalMatrix>, <thaumcraft:triple_meat_treat>, <ore:foodPorkrinds>, <ore:dustAstralStarmetal>], 
	[<ore:dustAstralStarmetal>, <ore:foodPorkrinds>, <thaumcraft:triple_meat_treat>, <ore:foodPorkrinds>, <ore:ingotCrystalMatrix>, <thaumcraft:triple_meat_treat>, <ore:ingotCosmicNeutronium>, <thaumcraft:triple_meat_treat>, <ore:dustAstralStarmetal>], 
	[<ore:dustAstralStarmetal>, <thaumcraft:triple_meat_treat>, <ore:ingotCosmicNeutronium>, <thaumcraft:triple_meat_treat>, <ore:dustAstralStarmetal>, <ore:foodPorkrinds>, <thaumcraft:triple_meat_treat>, <ore:foodPorkrinds>, <ore:dustAstralStarmetal>], 
	[<ore:dustAstralStarmetal>, <ore:foodPorkrinds>, <thaumcraft:triple_meat_treat>, <ore:foodPorkrinds>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, null], 
	[null, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, null, null, null, null, null]
]);
		
# Neutronium Ingot
	var ni = <ore:ingotCosmicNeutronium>;
# Infinity Catalyst
	var ic = <avaritia:resource:5>;
# Infinity Ingot
	var ii = <ore:ingotInfinity>;
# Crystal Matrix
	var cm = <ore:blockCrystalMatrix>;
	
# Infinity Armor
	mods.extendedcrafting.TableCrafting.addShaped(0, 
	<avaritia:infinity_helmet>, 
	[
	[null, null, ni, ni, ni, ni, ni, null, null],
	[null, ni, ii, ii, ii, ii, ii, ni, null],
	[null, ni, null, ic, ii, ic, null, ni, null],
	[null, ni, ii, ii, <draconicevolution:draconic_helm>.anyDamage(), ii, ii, ni, null],
	[null, ni, ii, ii, ii, ii, ii, ni, null],
	[null, ni, ii, null, ii, null, ii, ni, null],
	[null, null, null, null, null, null, null, null, null],
	[null, null, null, null, null, null, null, null, null],
	[null, null, null, null, null, null, null, null, null]
	]);

	mods.extendedcrafting.TableCrafting.addShaped(0, 
	<avaritia:infinity_chestplate>, 
	[
	[null, ni, ni, null, null, null, ni, ni, null],
	[ni, ni, ni, null, null, null, ni, ni, ni],
	[ni, ni, ni, null, null, null, ni, ni, ni],
	[null, ni, ii, ii, ii, ii, ii, ni, null],
	[null, ni, ii, ii, ii, ii, ii, ni, null],
	[null, ni, ii, ii, <draconicevolution:draconic_chest>.anyDamage(), ii, ii, ni, null],
	[null, ni, ii, ii, ii, ii, ii, ni, null],
	[null, ni, ii, ii, ii, ii, ii, ni, null],
	[null, null, ni, ni, ni, ni, ni, null, null]
	]);

	mods.extendedcrafting.TableCrafting.addShaped(0, 
	<avaritia:infinity_pants>, 
	[
	[ni, ni, ni, ni, ni, ni, ni, ni, ni],
	[ni, ii, ii, ii, <draconicevolution:draconic_legs>.anyDamage(), ii, ii, ii, ni],
	[ni, ii, ni, ni, ni, ni, ni, ii, ni],
	[ni, ii, ni, null, null, null, ni, ii, ni],
	[ni, ic, ni, null, null, null, ni, ic, ni],
	[ni, ii, ni, null, null, null, ni, ii, ni],
	[ni, ii, ni, null, null, null, ni, ii, ni],
	[ni, ii, ni, null, null, null, ni, ii, ni],
	[ni, ni, ni, null, null, null, ni, ni, ni]
	]);

	mods.extendedcrafting.TableCrafting.addShaped(0, 
	<avaritia:infinity_boots>, 
	[
	[null, ni, ni, ni, null, ni, ni, ni, null],
	[null, ni, ii, ni, null, ni, ii, ni, null],
	[null, ni, ii, ni, null, ni, ii, ni, null],
	[ni, ni, ii, ni, null, ni, ii, ni, ni],
	[ni, ii, ii, ni, null, ni, ii, ii, ni],
	[ni, ni, ni, ni, <draconicevolution:draconic_boots>.anyDamage(), ni, ni, ni, ni],
	[null, null, null, null, null, null, null, null, null],
	[null, null, null, null, null, null, null, null, null],
	[null, null, null, null, null, null, null, null, null]
	]);

# Infinity Sword
	mods.extendedcrafting.TableCrafting.addShaped(0, 
	<avaritia:infinity_sword>, 
	[
	[null, null, null, null, null, null, null, ii, ii],
	[null, null, null, null, null, null, ii, ii, ii],
	[null, null, null, null, null, ii, ii, ii, null],
	[null, null, null, null, ii, ii, ii, null, null],
	[null, cm, null, ii, ii, ii, null, null, null],
	[null, null, cm, <draconicevolution:draconic_staff_of_power>.anyDamage(), ii, null, null, null, null],
	[null, null, ni, cm, null, null, null, null, null],
	[null, ni, null, null, cm, null, null, null, null],
	[ic, null, null, null, null, null, null, null, null]
	]);
	
# Infinity Bow
	mods.extendedcrafting.TableCrafting.addShaped(0, 
	<avaritia:infinity_bow>, 
	[
	[null, null, null, ii, ii, null, null, null, null],
	[null, null, ii, null, <ore:blockRockwool>, null, null, null, null],
	[null, ii, null, null, <ore:blockRockwool>, null, null, null, null],
	[ii, null, null, null, <ore:blockRockwool>, null, null, null, null],
	[<draconicevolution:draconic_bow>.anyDamage(), null, null, null, <ore:blockRockwool>, null, null, null, null],
	[ii, null, null, null, <ore:blockRockwool>, null, null, null, null],
	[null, ii, null, null, <ore:blockRockwool>, null, null, null, null],
	[null, null, ii, null, <ore:blockRockwool>, null, null, null, null],
	[null, null, null, ii, ii, null, null, null, null]
	]);
	
# Infinity Pickaxe
	mods.extendedcrafting.TableCrafting.addShaped(0, 
	<avaritia:infinity_pickaxe>.withTag({ench: [{lvl: 10 as short, id: 35 as short}]}), 
	[
	[null, ii, ii, ii, ii, ii, ii, ii, null],
	[ii, ii, ii, ii, cm, ii, ii, ii, ii],
	[ii, ii, null, null, <draconicevolution:draconic_pick>.anyDamage(), null, null, ii, ii],
	[null, null, null, null, ni, null, null, null, null],
	[null, null, null, null, ni, null, null, null, null],
	[null, null, null, null, ni, null, null, null, null],
	[null, null, null, null, ni, null, null, null, null],
	[null, null, null, null, ni, null, null, null, null],
	[null, null, null, null, ni, null, null, null, null]
	]);
	
# Infinity Shovel
	mods.extendedcrafting.TableCrafting.addShaped(0, 
	<avaritia:infinity_shovel>, 
	[
	[null, null, null, null, null, null, ii, ii, ii],
	[null, null, null, null, null, ii, ii, <ore:blockInfinity>, ii],
	[null, null, null, null, null, null, <draconicevolution:draconic_shovel>.anyDamage(), ii, ii],
	[null, null, null, null, null, ni, null, ii, null],
	[null, null, null, null, ni, null, null, null, null],
	[null, null, null, ni, null, null, null, null, null],
	[null, null, ni, null, null, null, null, null, null],
	[null, ni, null, null, null, null, null, null, null],
	[ni, null, null, null, null, null, null, null, null]
	]);
	
# Infinity Axe
	mods.extendedcrafting.TableCrafting.addShaped(0, 
	<avaritia:infinity_axe>, 
	[
	[null, null, null, ii, null, null, null, null, null],
	[null, null, ii, ii, ii, ii, ii, null, null],
	[null, null, null, ii, ii, <draconicevolution:draconic_axe>.anyDamage(), ii, null, null],
	[null, null, null, null, null, ii, ni, null, null],
	[null, null, null, null, null, null, ni, null, null],
	[null, null, null, null, null, null, ni, null, null],
	[null, null, null, null, null, null, ni, null, null],
	[null, null, null, null, null, null, ni, null, null],
	[null, null, null, null, null, null, ni, null, null]
	]);
	
# Infinity Hoe
	mods.extendedcrafting.TableCrafting.addShaped(0, 
	<avaritia:infinity_hoe>, 
	[
	[null, null, null, null, null, ni, null, null, null],
	[null, ii, ii, ii, ii, ii, ii, null, null],
	[ii, ii, ii, ii, ii, <draconicevolution:draconic_hoe>.anyDamage(), ii, null, null],
	[ii, null, null, null, null, ii, ii, null, null],
	[null, null, null, null, null, ni, null, null, null],
	[null, null, null, null, null, ni, null, null, null],
	[null, null, null, null, null, ni, null, null, null],
	[null, null, null, null, null, ni, null, null, null],
	[null, null, null, null, null, ni, null, null, null]
	]);
	
# Extreme Crafting Table  
	recipes.remove(<avaritia:extreme_crafting_table>);
	mods.extendedcrafting.CombinationCrafting.addRecipe(<avaritia:extreme_crafting_table>, 
	100000000, 1000000, <avaritia:double_compressed_crafting_table>, 
	[<avaritia:resource:1>, <avaritia:resource:1>, <extendedcrafting:material:12>, 
	<extendedcrafting:material:12>, <avaritia:resource:1>, <avaritia:resource:1>]);
		