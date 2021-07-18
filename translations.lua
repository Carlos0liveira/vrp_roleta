Translations = {}

function _(str, ...) -- Translate string
    if Translations[Config.TranslationSelected] ~= nil then
        if Translations[Config.TranslationSelected][str] ~= nil then
            return string.format(Translations[Config.TranslationSelected][str], ...)
        else
            return 'Tradução [' .. Config.TranslationSelected .. '][' .. str .. '] não encontrada'
        end
    else
        return 'Locale [' .. Config.TranslationSelected .. '] não existe'
    end
end

function _U(str, ...) -- Translate string first char uppercase
    return tostring(_(str, ...):gsub('^%l', string.upper))
end

Translations['en'] = {
    ['limit_exceed'] = 'Sua aposta é muito alta ou muito baixa para esta mesa',
    ['invalid_bet'] = 'Aposta inválida',
    ['chair_used'] = 'Esta cadeira está ocupada',
    ['can_not_bet_because_started'] = 'A rodade começou, você não pode apostar neste momento',
    ['not_enough_chips'] = 'Você não tem fichas suficientes para apostar',
    ['input_place_bet'] = 'Quantas fichas gostaria de apostar?',
    -- help msg
    ['help_sit_rulett'] = '~INPUT_CONTEXT~ Sente-se na mesa da roleta',
    ['help_rulett_all'] = '~INPUT_CELLPHONE_CANCEL~ Levantarp\n~INPUT_CONTEXT~ Mudar camera\n~INPUT_LOOK_LR~ Selecionar Numero\n~INPUT_ATTACK~ Apostar Numero\n~INPUT_CELLPHONE_UP~ Auemnte a Aposta\n~INPUT_CELLPHONE_DOWN~ Diminua a Aposta\n~INPUT_JUMP~ Valor de Aposta',
    -- nui
    ['starting_soon'] = 'O jogo iniciará em breve..',
    ['game_going_on'] = 'jogo em progresso..',
    ['seconds'] = 'segundos.',
    -- formatted msg
    ['won_chips'] = 'Você ganhou %s fichas. Multiplicador: x%s',
    ['placed_bet'] = 'Apostou %s fichas.'
}

