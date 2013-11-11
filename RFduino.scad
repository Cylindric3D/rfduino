RF_MODULE_BASE = [20, 20, 1];
RF_MODULE_USB = [20, 20, 5];
RF_MODULE_XXX = [20, 20, 2];

module RFduino(mod1=0, mod2=0, mod3=0)
{
	cube(RF_MODULE_BASE);

	if(mod1 != 0) 
	{
		RDmodule(mod1, [0, 0, RF_MODULE_BASE[2]+1]);
	}
	if(mod2 != 0) 
	{
		RDmodule(mod2, [0, 0, RF_MODULE_BASE[2]+1+mod1[2]+1]);
	}
	if(mod3 != 0) 
	{
		RDmodule(mod3, [0, 0, RF_MODULE_BASE[2]+1+mod1[2]+1+mod2[2]+1]);
	}
	
}

module RDmodule(mod, pos)
{
	translate(pos)
	cube(mod);
}


RFduino(RF_MODULE_USB, RF_MODULE_USB, RF_MODULE_USB);