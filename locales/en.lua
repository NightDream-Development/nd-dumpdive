local Translations = {
    target = {
        label = 'Dive In'
    },
    notifies = {
        you_got = 'You were rummaging in the bin and found:  %{items}',
        got_nothing = 'You were rummaging in the bin and found nothing!',
        failed_minigame = 'You failed to rummage in the bin!',
        canled_progress = 'You stopped rummaging in the bin!',
        already_dived = 'Someone has been rummaged this bin!!',
    },
    progress = {
        diving = 'Rummaging through the trash...',
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})