return {
  "thevahidal/deej.nvim",
  config = function()
    require("deej").setup({
      beat_dir = vim.fn.stdpath("data") .. "/deej/beats/",
      beat_files = {
        default = "kick.wav",
        enter = "snare.wav",
        brace = "hihat.wav",
        semicolon = "clap.wav",
      },
      cooldown = 0.1, -- Time between sounds (seconds)
      volume = 50, -- Volume for mpv (0-100)
    })

    vim.keymap.set("n", "<leader>dj", require("deej").toggle, { desc = "Toggle Deej" })
  end,
}
