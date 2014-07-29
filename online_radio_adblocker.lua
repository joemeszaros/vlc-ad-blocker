
function descriptor()
   return {
      title = "Online Radio AD blocker",
      author = "joe.meszaros@gmail.com",
      version = 0.2,
      shortdesc = 'AdBlock',
      url = '',
      description = "It always annoying when a commercial unexpectedly interrupts your relaxation and tries to sell you irrelevant products and services again and again every day. Hey, what happened? I want to listen my online radio without ads! With this extension (after configuration) the volume level is automatically set to 0 when an AD is recognized",
      capabilities = {"input-listener"}
   }
end

function meta_changed()
   vlc.msg.info("... meta_changed ...")
   t = get_now_playing()
   vlc.msg.info("Now playing:")
   vlc.msg.info(t)
   prev = block
   block = string.find(t, '^[aA][dD]')
   if block then
      vlc.msg.info("Found AD, set volume level to 0")
      if not prev then
          volume_level = vlc.volume.get()
      end
      vlc.volume.set(0)
   else
      if prev then
          vlc.volume.set(volume_level)
      end
   end
end

function activate()
    volume_level = vlc.volume.get()
end

function deactivate()
end

function get_now_playing(str)
    local item = vlc.item or vlc.input.item()
    if not item then
        return ""
    end
    local metas = item:metas()
    if metas["now_playing"] then
        return metas["now_playing"]
    else
        return ""
    end
end
