# README.md

# Configuración de Neovim con NvChad

Esta carpeta contiene los ficheros de configuración necesarios para personalizar y extender Neovim usando NvChad. A continuación se describe la estructura y función de cada archivo y carpeta.

## Estructura de la Carpeta

- `plugins.lua`
- `init.lua`
- `chadrc.lua`
- `configs/`
  - `autosave.lua`
  - `lspconfig.lua`
  - `mappings.lua`
  - `null-ls.lua`

## Descripción de Archivos y Carpetas

### `plugins.lua`

Este archivo se encarga de gestionar los plugins utilizados en Neovim. A continuación se listan los plugins configurados:

- **`jose-elias-alvarez/null-ls.nvim`**: Proporciona formateo y linting. Se carga después de `nvim-lspconfig` y utiliza la configuración definida en `custom.configs.null-ls`.
- **`Pocco81/AutoSave.nvim`**: Habilita el autoguardado de archivos. No es cargado de forma perezosa y utiliza la configuración en `custom.configs.autosave`.
- **`goolord/alpha-nvim`**: Un plugin de inicio configurable para Neovim.
- **`segeljakt/vim-silicon`**: Permite generar imágenes de código fuente con estilo, usando la configuración especificada en este archivo.
- **`neovim/nvim-lspconfig`**: Configura el LSP (Lenguaje de Servidor Protocolo) de Neovim, utilizando tanto las configuraciones predeterminadas como las personalizadas.
- **`watzon/vim-edge-template`**: Un plugin para manejar plantillas en Vim.
- **`williamboman/mason.nvim`**: Gestor de paquetes LSP, DAP, linters y formatters. La opción `ensure_installed` se utiliza para especificar las herramientas que deben ser instaladas.

### `init.lua`

Este archivo contiene una sola línea de comando Vim que asegura que el directorio actual de trabajo se actualice automáticamente al abrir un buffer (excepto en terminales):

```lua
vim.cmd [[ autocmd BufEnter * if &buftype != "terminal" | lcd %:p:h | endif ]]
```

### `chadrc.lua`

Archivo de configuración principal para NvChad. Define los plugins y mapeos personalizados:

```lua
local M = {}

M.plugins = "custom.plugins"
M.mappings = require "custom.configs.mappings"

return M
```

### Carpeta `configs`

Contiene configuraciones específicas para varios plugins:

- **`autosave.lua`**: Configuración del plugin AutoSave.
- **`lspconfig.lua`**: Configuraciones adicionales para LSP.
- **`mappings.lua`**: Definiciones de teclas personalizadas.
- **`null-ls.lua`**: Configuración para el plugin null-ls.

## Instrucciones de Instalación

1. Clona el repositorio de NvChad si aún no lo has hecho:
    ```sh
    git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
    ```

2. Clona o copia esta carpeta de configuración dentro del directorio `custom` en la carpeta de configuración de NvChad:
    ```sh
    cp -r /ruta/a/tu/carpeta/configuracion ~/.config/nvim/lua/custom
    ```

3. Inicia Neovim y los plugins especificados se instalarán automáticamente.

## Contribuciones

Las contribuciones son bienvenidas. Si deseas agregar o modificar la configuración, por favor asegúrate de que los cambios sean compatibles y estén documentados apropiadamente.

---

Esta es una configuración inicial que puede ser extendida según tus necesidades. Para más detalles sobre la configuración de NvChad, consulta la [documentación oficial de NvChad](https://nvchad.com/docs/quickstart/install).
