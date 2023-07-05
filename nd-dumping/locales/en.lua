local Translations = {
    target = {
        label = 'Dive In'
    },
    notifies = {
        you_got = 'Sikeresen találtál %{items}',
        got_nothing = 'Nem találtál semmit',
        failed_minigame = 'Nem sikerült a matatás.',
        canled_progress = 'Befejezted a matatást',
        already_dived = 'Ezt már valaki átnézte',
    },
    progress = {
        diving = 'Matatás folyamatban',
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})