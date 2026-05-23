return {
    'stevearc/conform.nvim',
    lazy = false, -- Cargar temprano para estar listo para formatear
    keys = {
        {
            '<leader>f',
            function()
                require('conform').format({ async = true, lsp_fallback = true })
            end,
            mode = '',
            desc = 'Format file or range (Conform)',
        },
    },
    opts = {
        -- Formateadores predeterminados por lenguaje
        formatters_by_ft = {
            lua = { 'stylua' },
            css = { 'prettier' },
            html = { 'prettier' },
            json = { 'prettier' },
            yaml = { 'prettier' },
            markdown = { 'prettier' },
            -- Otros lenguajes comunes de Prettier
            javascript = { 'prettier' },
            typescript = { 'prettier' },
            javascriptreact = { 'prettier' },
            typescriptreact = { 'prettier' },
        },

        -- Configurar formateo al guardar
        format_on_save = {
            lsp_fallback = true, -- Permite que el LSP nativo formatee si conform no lo hace
            async = false,       -- El formateo síncrono previene problemas de guardado
            timeout_ms = 1000,
            -- Lista de lenguajes donde NO quieres formatear al guardar
            -- Por ejemplo, si ya tienes un servidor de lenguaje que maneja PHP.
            -- Si deseas que conform maneje PHP con Prettier, elimínalo.
            -- exclude = { 'php' },
        },
    },
}
