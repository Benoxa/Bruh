MODS = {
	[1787184971] = true -- owner
}

ADMINS = {
	[1787184971] = true
}

function initiateNames()
	game.Players.LocalPlayer.Character.LowerTorso:FindFirstChild('OriginalSize'):Destroy()
	for _,v in pairs(game:GetService('Players'):GetPlayers()) do
		if v.Character then
			if ADMINS[v.UserId] then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] ' .. v.DisplayName)
			elseif MODS[v.UserId] then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐] ' .. v.DisplayName)
			elseif not v.Character.LowerTorso:FindFirstChild('OriginalSize') then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😎] ' .. v.DisplayName)
			end
		end
	end
end

local successful, errored = pcall(initiateNames)
return MODS, ADMINS
