local Hydra = require('hydra')

Hydra({
   name = 'Side scroll',
   mode = 'n',
   body = 'z',
   heads = {
      { 'h', '5zh' },
      { 'l', '5zl', { desc = '←/→' } },
      { 'H', 'zH' },
      { 'L', 'zL', { desc = 'half screen ←/→' } },
   }
})

-- create window resize hydra
Hydra({
   name = 'Window resize',
   mode = 'n',
   body = '<C-w>',
   heads = {
     { 'h', '<C-w>>', { desc = 'move window >' } }
   }
})
