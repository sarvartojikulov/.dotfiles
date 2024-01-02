-- import comment plugin safely
local setup, comment = pcall(require, "Comment")
if not setup then
	return
end

-- `gc` - Toggles the region using linewise comment
-- `gb` - Toggles the region using blockwise comment
--
-- Example:
--
-- Comment 2 lines down from current cursor position
-- gc + j
--
-- Comment block
-- gb + }
--

-- enable comment
comment.setup()
