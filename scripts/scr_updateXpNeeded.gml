obj_RiflemanSkills.nextXpRequirement = 1000;
for (i = 0; i < 2; i++) {
    if (obj_RiflemanSkills.xpNeeded[i] < obj_RiflemanSkills.nextXpRequirement) {
        obj_RiflemanSkills.nextXpRequirement = obj_RiflemanSkills.xpNeeded[i]
    }
}
