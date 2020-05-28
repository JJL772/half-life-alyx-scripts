--[[

Test script for custom weapons derived from C++ classes

]]

-- @TODO: Automate this
EntityFramework:CreateCppClassProxy("CWeaponSMG1")


EntityClasses.CWeaponSMG2 = class(
{

}, 
{
    Specification = 
    {
        bases = {"root"},
        description = "Example entity for addition and subtraction of integers with associated triggers",
        tags = 
        {
            "math",
            "logic",
            "trigger"
        },
        documentation = "",
        designername = "weapon_smg2",
        helpers = "iconsprite(materials/editor/env_tonemap_controller.vmat)",
        
        meta = 
        {
            startvalue = 
            {
                tags = "publish",
                type = "integer",
                name = "Initial value",
                description = "Starting value for the counter."
            },
            min = 
            {
                tags = "publish",
                type = "integer",
                name = "Minimum Legal Value",
                description = "Minimum legal value for the counter. If min=0 and max=0, no clamping is performed."
            },
            max = 
            {
                tags = "publish",
                type = "integer",
                name = "Maximum Legal Value",
                description = "Maximum legal value for the counter. If min=0 and max=0, no clamping is performed."
            },
            value = 
            {
                tags = "debug",
                type = "integer",
                description = "Current value for the counter."
            },
            choicesTest = 
            {
                tags = "publish",
                type = "choices",
                name = "Choices Test",
                description = "Choices Test",
                choices = 
                {
                    [1] = "Hello There",
                    [2] = "Welcome",
                    [5] = "Good Morning"
                },
                def = "5"
            },
            position1 = 
            {
                tags = {"publish"},
                type = "ehandle",
                name = "Position 1",
                description = "entity used to mark a position"
            },
            position2 = 
            {
                tags = {"publish"},
                type = "ehandle",
                name = "Position 2",
                description = "entity used to mark a position"
            },
            tagTest = 
            {
                tags = "publish",
                type = "tag_list",
                name = "Tag Test",
                description = "Tag Test",
                tag_list = 
                {
                    {
                        "GAMESTRING1",
                        "Designer game string 1",
                        0
                    },
                    
                    {
                        "GAMESTRING2",
                        "Designer game string 2",
                        0
                    }
                }
            }
        },
        
        inputs = 
        {
        },
        
        outputs = 
        {
        },
        
        validators = 
        {
        }
    },
    
    Mixins = {"EnableDisable"}
}, EntityClasses.CWeaponSMG1)


-- Functions
function EntityClasses.CExampleEntity:Spawn(spawnKeys) 
end


function EntityClasses.CExampleEntity:Add(toAdd) 
    self:Update(self.value, self.value + toAdd)
end


function EntityClasses.CExampleEntity:Subtract(toSubtract) 
    self:Update(self.value, self.value - toSubtract)
end


function EntityClasses.CExampleEntity:Update(oldValue, newValue) 
	
end


function EntityClasses.CExampleEntity:GetValue() 
    return self.value
end
