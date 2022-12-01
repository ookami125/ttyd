ALL:=\
	$(BUILD_DIR)/asm/init.o\
	$(BUILD_DIR)/data/extab.o\
	$(BUILD_DIR)/data/extabindex.o\
	\
	$(BUILD_DIR)/src/main.o\
	$(BUILD_DIR)/asm/system.o\
	$(BUILD_DIR)/asm/seq/seq_game.o\
	$(BUILD_DIR)/asm/seq/seq_mapchange.o\
	$(BUILD_DIR)/asm/seq/seq_title.o\
	$(BUILD_DIR)/asm/bgdrv.o\
	$(BUILD_DIR)/asm/cam_road.o\
	$(BUILD_DIR)/asm/camdrv.o\
	$(BUILD_DIR)/asm/dispdrv.o\
	$(BUILD_DIR)/asm/fadedrv.o\
	$(BUILD_DIR)/asm/hitdrv.o\
	$(BUILD_DIR)/asm/icondrv.o\
	$(BUILD_DIR)/asm/lightdrv.o\
	$(BUILD_DIR)/asm/mapdrv.o\
	$(BUILD_DIR)/asm/shadowdrv.o\
	$(BUILD_DIR)/data/sdata_1.o\
	$(BUILD_DIR)/src/seq/seqdrv.o\
	$(BUILD_DIR)/asm/DEMOInit.o\
	$(BUILD_DIR)/asm/DEMOPad.o\
	$(BUILD_DIR)/asm/memory.o\
	$(BUILD_DIR)/asm/evt/evtmgr_cmd.o\
	$(BUILD_DIR)/asm/evt/evtmgr.o\
	$(BUILD_DIR)/data/rodata_1.o\
	$(BUILD_DIR)/src/texPalette.o\
	$(BUILD_DIR)/asm/evt/evt_map.o\
	$(BUILD_DIR)/asm/mapdata.o\
	$(BUILD_DIR)/asm/animdrv.o\
	$(BUILD_DIR)/asm/npcdrv.o\
	$(BUILD_DIR)/asm/evt/evt_npc.o\
	$(BUILD_DIR)/asm/evt/evt_sub.o\
	$(BUILD_DIR)/asm/mario/mario.o\
	$(BUILD_DIR)/asm/eff/effdrv.o\
	$(BUILD_DIR)/asm/mobjdrv.o\
	$(BUILD_DIR)/asm/evt/evt_mobj.o\
	$(BUILD_DIR)/asm/evt/evt_eff.o\
	$(BUILD_DIR)/asm/evt/evt_paper.o\
	$(BUILD_DIR)/asm/casedrv.o\
	$(BUILD_DIR)/asm/mario/mariost.o\
	$(BUILD_DIR)/asm/evt/evt_case.o\
	$(BUILD_DIR)/asm/evt/evt_img.o\
	$(BUILD_DIR)/asm/imgdrv.o\
	$(BUILD_DIR)/asm/offscreendrv.o\
	$(BUILD_DIR)/asm/evt/evt_offscreen.o\
	$(BUILD_DIR)/asm/seq/seq_battle.o\
	$(BUILD_DIR)/asm/evt/evt_hit.o\
	$(BUILD_DIR)/asm/fontmgr.o\
	$(BUILD_DIR)/asm/arc.o\
	$(BUILD_DIR)/src/arcdrv.o\
	$(BUILD_DIR)/asm/seq/seq_gameover.o\
	$(BUILD_DIR)/asm/evt/evt_bero.o\
	$(BUILD_DIR)/asm/win/windowdrv.o\
	$(BUILD_DIR)/asm/msgdrv.o\
	$(BUILD_DIR)/asm/parse.o\
	$(BUILD_DIR)/asm/database.o\
	$(BUILD_DIR)/src/swdrv.o\
	$(BUILD_DIR)/asm/seq/seq_logo.o\
	$(BUILD_DIR)/asm/mot/mot_walk.o\
	$(BUILD_DIR)/asm/mario/mario_hit.o\
	$(BUILD_DIR)/asm/mario/mario_motion.o\
	$(BUILD_DIR)/asm/mario/mario_sbr.o\
	$(BUILD_DIR)/asm/mot/mot_hammer.o\
	$(BUILD_DIR)/asm/mot/mot_jabara.o\
	$(BUILD_DIR)/asm/mot/mot_jump.o\
	$(BUILD_DIR)/asm/mot/mot_plane.o\
	$(BUILD_DIR)/asm/mot/mot_roll.o\
	$(BUILD_DIR)/asm/mot/mot_ship.o\
	$(BUILD_DIR)/asm/mot/mot_slit.o\
	$(BUILD_DIR)/asm/mot/mot_stay.o\
	$(BUILD_DIR)/asm/evt/evt_cam.o\
	$(BUILD_DIR)/asm/evt/evt_item.o\
	$(BUILD_DIR)/asm/itemdrv.o\
	$(BUILD_DIR)/asm/cardmgr.o\
	$(BUILD_DIR)/asm/party/party_yoshi.o\
	$(BUILD_DIR)/asm/party/party.o\
	$(BUILD_DIR)/asm/party/party_bomhei.o\
	$(BUILD_DIR)/asm/party/party_hit.o\
	$(BUILD_DIR)/asm/party/party_kuribo.o\
	$(BUILD_DIR)/asm/party/party_move.o\
	$(BUILD_DIR)/asm/party/party_nokonoko.o\
	$(BUILD_DIR)/asm/evt/evt_msg.o\
	$(BUILD_DIR)/asm/mario/mario_pouch.o\
	$(BUILD_DIR)/asm/extdrv.o\
	$(BUILD_DIR)/asm/evt/evt_ext.o\
	$(BUILD_DIR)/asm/pmario_sound.o\
	$(BUILD_DIR)/asm/sound.o\
	$(BUILD_DIR)/asm/evt/evt_mario.o\
	$(BUILD_DIR)/asm/evt/evt_door.o\
	$(BUILD_DIR)/asm/evt/evt_party.o\
	$(BUILD_DIR)/asm/event.o\
	$(BUILD_DIR)/asm/evt/evt_shop.o\
	$(BUILD_DIR)/asm/evt/evt_pouch.o\
	$(BUILD_DIR)/asm/evt/evt_kinopio.o\
	$(BUILD_DIR)/asm/npc_event.o\
	$(BUILD_DIR)/asm/cam_shift.o\
	$(BUILD_DIR)/asm/seq/seq_load.o\
	$(BUILD_DIR)/asm/evt/evt_bg.o\
	$(BUILD_DIR)/asm/battle/battle.o\
	$(BUILD_DIR)/asm/battle/battle_ac.o\
	$(BUILD_DIR)/asm/battle/battle_damage.o\
	$(BUILD_DIR)/asm/battle/battle_detect.o\
	$(BUILD_DIR)/asm/battle/battle_disp.o\
	$(BUILD_DIR)/asm/battle/battle_event_cmd.o\
	$(BUILD_DIR)/asm/battle/battle_event_default.o\
	$(BUILD_DIR)/asm/battle/battle_event_subset.o\
	$(BUILD_DIR)/asm/battle/battle_information.o\
	$(BUILD_DIR)/asm/battle/battle_mario.o\
	$(BUILD_DIR)/asm/battle/battle_menu_disp.o\
	$(BUILD_DIR)/asm/battle/battle_pad.o\
	$(BUILD_DIR)/asm/battle/battle_seq.o\
	$(BUILD_DIR)/asm/battle/battle_seq_command.o\
	$(BUILD_DIR)/asm/battle/battle_sub.o\
	$(BUILD_DIR)/asm/battle/battle_unit.o\
	$(BUILD_DIR)/asm/battle/battle_unit_event.o\
	$(BUILD_DIR)/asm/battle/ac/ac_stick_keep_left.o\
	$(BUILD_DIR)/asm/battle/ac/ac_timing_a.o\
	$(BUILD_DIR)/asm/evt/evt_damage.o\
	$(BUILD_DIR)/asm/battle/battle_camera.o\
	$(BUILD_DIR)/asm/battle/battle_item_data.o\
	$(BUILD_DIR)/asm/battle/battle_monosiri.o\
	$(BUILD_DIR)/asm/mario/mario_balloon.o\
	$(BUILD_DIR)/asm/evt/evt_nannpc.o\
	$(BUILD_DIR)/asm/eff/eff_fukidashi.o\
	$(BUILD_DIR)/asm/eff/eff_kemuri.o\
	$(BUILD_DIR)/asm/eff/eff_butterfly.o\
	$(BUILD_DIR)/asm/eff/eff_confetti.o\
	$(BUILD_DIR)/asm/mario/mario_kemuri.o\
	$(BUILD_DIR)/asm/evt/evt_fade.o\
	$(BUILD_DIR)/asm/evt/evt_light.o\
	$(BUILD_DIR)/asm/battle/ac/ac_repeatedly.o\
	$(BUILD_DIR)/asm/battle/battle_stage.o\
	$(BUILD_DIR)/asm/evt/evt_audience.o\
	$(BUILD_DIR)/asm/mot/mot_damage.o\
	$(BUILD_DIR)/asm/mot/mot_yoshi.o\
	$(BUILD_DIR)/asm/evt/evt_batstage.o\
	$(BUILD_DIR)/asm/statuswindow.o\
	$(BUILD_DIR)/asm/evt/evt_seq.o\
	$(BUILD_DIR)/asm/eff/eff_damage_star.o\
	$(BUILD_DIR)/asm/eff/eff_hit.o\
	$(BUILD_DIR)/asm/eff/eff_mario_balloon.o\
	$(BUILD_DIR)/asm/eff/eff_small_star.o\
	$(BUILD_DIR)/asm/eff/eff_mugi.o\
	$(BUILD_DIR)/asm/mario/mario_party.o\
	$(BUILD_DIR)/asm/eff/eff_stardust.o\
	$(BUILD_DIR)/asm/eff/eff_recovery.o\
	$(BUILD_DIR)/asm/eff/eff_miss_star.o\
	$(BUILD_DIR)/asm/eff/eff_nice.o\
	$(BUILD_DIR)/asm/dvdmgr.o\
	$(BUILD_DIR)/asm/battle/unit/unit_mario.o\
	$(BUILD_DIR)/asm/evt/evt_twoddisp.o\
	$(BUILD_DIR)/asm/eff/eff_breath_fire.o\
	$(BUILD_DIR)/asm/battle/battle_attack_audience.o\
	$(BUILD_DIR)/asm/battle/battle_stage_object.o\
	$(BUILD_DIR)/asm/mot/mot_dokan.o\
	$(BUILD_DIR)/asm/party/party_motion.o\
	$(BUILD_DIR)/asm/evt/evt_snd.o\
	$(BUILD_DIR)/asm/arammgr.o\
	$(BUILD_DIR)/asm/win/win_root.o\
	$(BUILD_DIR)/asm/win/win_party.o\
	$(BUILD_DIR)/asm/win/win_badge.o\
	$(BUILD_DIR)/asm/win/win_item.o\
	$(BUILD_DIR)/asm/win/win_mario.o\
	$(BUILD_DIR)/asm/win/win_log.o\
	$(BUILD_DIR)/asm/evt/evt_win.o\
	$(BUILD_DIR)/asm/win/win_main.o\
	$(BUILD_DIR)/asm/evt/evt_cloud.o\
	$(BUILD_DIR)/asm/battle/unit/unit_party_clauda.o\
	$(BUILD_DIR)/asm/battle/unit/unit_party_yoshi.o\
	$(BUILD_DIR)/asm/battle/unit/unit_party_chuchurina.o\
	$(BUILD_DIR)/asm/battle/unit/unit_party_sanders.o\
	$(BUILD_DIR)/asm/battle/unit/unit_party_vivian.o\
	$(BUILD_DIR)/asm/himo.o\
	$(BUILD_DIR)/asm/party/party_vivian.o\
	$(BUILD_DIR)/asm/party/party_cloud.o\
	$(BUILD_DIR)/asm/party/party_chuchu.o\
	$(BUILD_DIR)/asm/battle/unit/unit_party_nokotarou.o\
	$(BUILD_DIR)/asm/battle/unit/unit_party_christine.o\
	$(BUILD_DIR)/asm/battle/battle_weapon_power.o\
	$(BUILD_DIR)/asm/filemgr.o\
	$(BUILD_DIR)/asm/mot/mot_hip.o\
	$(BUILD_DIR)/asm/eff/eff_fire.o\
	$(BUILD_DIR)/asm/battle/battle_actrecord.o\
	$(BUILD_DIR)/asm/battle/battle_audience_kinopio.o\
	$(BUILD_DIR)/asm/battle/battle_acrobat.o\
	$(BUILD_DIR)/asm/eff/eff_spark.o\
	$(BUILD_DIR)/asm/eff/eff_updown.o\
	$(BUILD_DIR)/asm/eff/eff_charge.o\
	$(BUILD_DIR)/asm/eff/eff_toge_flush.o\
	$(BUILD_DIR)/asm/battle/battle_status_effect.o\
	$(BUILD_DIR)/asm/eff/eff_ice.o\
	$(BUILD_DIR)/asm/eff/eff_torch.o\
	$(BUILD_DIR)/asm/eff/eff_bomb.o\
	$(BUILD_DIR)/asm/battle/ac/ac_shot.o\
	$(BUILD_DIR)/asm/eff/eff_ripple.o\
	$(BUILD_DIR)/asm/evt/evt_env.o\
	$(BUILD_DIR)/asm/envdrv.o\
	$(BUILD_DIR)/asm/battle/ac/ac_lst_rc_keep.o\
	$(BUILD_DIR)/asm/battle/battle_audience.o\
	$(BUILD_DIR)/asm/mario/mario_cam.o\
	$(BUILD_DIR)/asm/battle/unit/unit_object_tree.o\
	$(BUILD_DIR)/asm/battle/unit/unit_object_switch.o\
	$(BUILD_DIR)/asm/battle/battle_icon.o\
	$(BUILD_DIR)/asm/evt/evt_telop.o\
	$(BUILD_DIR)/asm/battle/ac/ac_repeatedly_lv.o\
	$(BUILD_DIR)/asm/battle/battle_message.o\
	$(BUILD_DIR)/asm/eff/eff_whirlwind_n64.o\
	$(BUILD_DIR)/asm/eff/eff_akari_charge_n64.o\
	$(BUILD_DIR)/asm/eff/eff_akari_pose_n64.o\
	$(BUILD_DIR)/asm/eff/eff_akari_sflush_n64.o\
	$(BUILD_DIR)/asm/eff/eff_balloon_heiho_n64.o\
	$(BUILD_DIR)/asm/eff/eff_balloon_n64.o\
	$(BUILD_DIR)/asm/eff/eff_blow_n64.o\
	$(BUILD_DIR)/asm/eff/eff_bomb_n64.o\
	$(BUILD_DIR)/asm/eff/eff_bomhei_n64.o\
	$(BUILD_DIR)/asm/eff/eff_booboo_n64.o\
	$(BUILD_DIR)/asm/eff/eff_breath_fire_n64.o\
	$(BUILD_DIR)/asm/eff/eff_broken_barrier_n64.o\
	$(BUILD_DIR)/asm/eff/eff_bush_n64.o\
	$(BUILD_DIR)/asm/eff/eff_butterfly_n64.o\
	$(BUILD_DIR)/asm/eff/eff_cloud_n64.o\
	$(BUILD_DIR)/asm/eff/eff_coin_n64.o\
	$(BUILD_DIR)/asm/eff/eff_confetti_n64.o\
	$(BUILD_DIR)/asm/eff/eff_cool_leaf_n64.o\
	$(BUILD_DIR)/asm/eff/eff_crystal_n64.o\
	$(BUILD_DIR)/asm/eff/eff_dogabon_attack_n64.o\
	$(BUILD_DIR)/asm/eff/eff_expbom_n64.o\
	$(BUILD_DIR)/asm/eff/eff_explosion_n64.o\
	$(BUILD_DIR)/asm/eff/eff_fall_leaf_n64.o\
	$(BUILD_DIR)/asm/eff/eff_fire_dust_n64.o\
	$(BUILD_DIR)/asm/eff/eff_fire_ring_n64.o\
	$(BUILD_DIR)/asm/eff/eff_fire_spark_n64.o\
	$(BUILD_DIR)/asm/eff/eff_fireflower_n64.o\
	$(BUILD_DIR)/asm/eff/eff_fireworks_n64.o\
	$(BUILD_DIR)/asm/eff/eff_flame_n64.o\
	$(BUILD_DIR)/asm/eff/eff_flower_n64.o\
	$(BUILD_DIR)/asm/eff/eff_freeze_n64.o\
	$(BUILD_DIR)/asm/eff/eff_gareki_n64.o\
	$(BUILD_DIR)/asm/eff/eff_glass_n64.o\
	$(BUILD_DIR)/asm/eff/eff_guruguru_n64.o\
	$(BUILD_DIR)/asm/eff/eff_hatetaka_flush_n64.o\
	$(BUILD_DIR)/asm/eff/eff_hit_n64.o\
	$(BUILD_DIR)/asm/eff/eff_hokori_n64.o\
	$(BUILD_DIR)/asm/eff/eff_holography_n64.o\
	$(BUILD_DIR)/asm/eff/eff_horao_spell_n64.o\
	$(BUILD_DIR)/asm/eff/eff_ice_n64.o\
	$(BUILD_DIR)/asm/eff/eff_kameki_tornade_n64.o\
	$(BUILD_DIR)/asm/eff/eff_kemuri1_n64.o\
	$(BUILD_DIR)/asm/eff/eff_kemuri2_n64.o\
	$(BUILD_DIR)/asm/eff/eff_kemuri3_n64.o\
	$(BUILD_DIR)/asm/eff/eff_kemuri4_n64.o\
	$(BUILD_DIR)/asm/eff/eff_kemuri5_n64.o\
	$(BUILD_DIR)/asm/eff/eff_kemuri6_n64.o\
	$(BUILD_DIR)/asm/eff/eff_kemuri7_n64.o\
	$(BUILD_DIR)/asm/eff/eff_kemuri8_n64.o\
	$(BUILD_DIR)/asm/eff/eff_kemuri9_n64.o\
	$(BUILD_DIR)/asm/eff/eff_kemuri10_n64.o\
	$(BUILD_DIR)/asm/eff/eff_kemuri11_n64.o\
	$(BUILD_DIR)/asm/eff/eff_kemuri12_n64.o\
	$(BUILD_DIR)/asm/eff/eff_kumokumo_chip_n64.o\
	$(BUILD_DIR)/asm/eff/eff_kumokumo_n64.o\
	$(BUILD_DIR)/asm/eff/eff_lensflare_n64.o\
	$(BUILD_DIR)/asm/eff/eff_magic1_n64.o\
	$(BUILD_DIR)/asm/eff/eff_magic2_n64.o\
	$(BUILD_DIR)/asm/eff/eff_magic3_n64.o\
	$(BUILD_DIR)/asm/eff/eff_magic_horao_n64.o\
	$(BUILD_DIR)/asm/eff/eff_n64.o\
	$(BUILD_DIR)/asm/eff/eff_onpu_n64.o\
	$(BUILD_DIR)/asm/eff/eff_opuku_jetw_n64.o\
	$(BUILD_DIR)/asm/eff/eff_opuku_jetwrain_n64.o\
	$(BUILD_DIR)/asm/eff/eff_opuku_wcurtain_n64.o\
	$(BUILD_DIR)/asm/eff/eff_opuku_wgun_n64.o\
	$(BUILD_DIR)/asm/eff/eff_opuku_wprotect_n64.o\
	$(BUILD_DIR)/asm/eff/eff_packn_bfire_n64.o\
	$(BUILD_DIR)/asm/eff/eff_peach_dust_n64.o\
	$(BUILD_DIR)/asm/eff/eff_pikkyolo_n64.o\
	$(BUILD_DIR)/asm/eff/eff_pokopi_pcharge_n64.o\
	$(BUILD_DIR)/asm/eff/eff_pokopi_pipo_n64.o\
	$(BUILD_DIR)/asm/eff/eff_pokopi_thunder_n64.o\
	$(BUILD_DIR)/asm/eff/eff_pturn_n64.o\
	$(BUILD_DIR)/asm/eff/eff_radiation_n64.o\
	$(BUILD_DIR)/asm/eff/eff_rappa_n64.o\
	$(BUILD_DIR)/asm/eff/eff_recover_heart_n64.o\
	$(BUILD_DIR)/asm/eff/eff_release_n64.o\
	$(BUILD_DIR)/asm/eff/eff_ripple_n64.o\
	$(BUILD_DIR)/asm/eff/eff_rothammer_fail_n64.o\
	$(BUILD_DIR)/asm/eff/eff_rothammer_success_n64.o\
	$(BUILD_DIR)/asm/eff/eff_rubble_n64.o\
	$(BUILD_DIR)/asm/eff/eff_shock_n64.o\
	$(BUILD_DIR)/asm/eff/eff_small_star_n64.o\
	$(BUILD_DIR)/asm/eff/eff_snow_n64.o\
	$(BUILD_DIR)/asm/eff/eff_snowfall_n64.o\
	$(BUILD_DIR)/asm/eff/eff_snowman_n64.o\
	$(BUILD_DIR)/asm/eff/eff_sstar_n64.o\
	$(BUILD_DIR)/asm/eff/eff_stamp_n64.o\
	$(BUILD_DIR)/asm/eff/eff_star_power_n64.o\
	$(BUILD_DIR)/asm/eff/eff_stardust2_n64.o\
	$(BUILD_DIR)/asm/eff/eff_stardust_n64.o\
	$(BUILD_DIR)/asm/eff/eff_stone_smoke_n64.o\
	$(BUILD_DIR)/asm/eff/eff_sunlight_n64.o\
	$(BUILD_DIR)/asm/eff/eff_sweat_n64.o\
	$(BUILD_DIR)/asm/eff/eff_thruhammer_n64.o\
	$(BUILD_DIR)/asm/eff/eff_thunder_n64.o\
	$(BUILD_DIR)/asm/eff/eff_thunderflare_n64.o\
	$(BUILD_DIR)/asm/eff/eff_timestamp_n64.o\
	$(BUILD_DIR)/asm/eff/eff_vapor_n64.o\
	$(BUILD_DIR)/asm/eff/eff_wangflush_n64.o\
	$(BUILD_DIR)/asm/eff/eff_water_damage_n64.o\
	$(BUILD_DIR)/asm/eff/eff_snow_dust_n64.o\
	$(BUILD_DIR)/asm/seq/seq_demo.o\
	$(BUILD_DIR)/asm/evt/evt_movefloor.o\
	$(BUILD_DIR)/asm/battle/battle_enemy_item.o\
	$(BUILD_DIR)/asm/evt/evt_badgeshop.o\
	$(BUILD_DIR)/asm/evt/evt_johoya.o\
	$(BUILD_DIR)/asm/peach.o\
	$(BUILD_DIR)/asm/koopa.o\
	$(BUILD_DIR)/asm/evt/evt_uranaisi.o\
	$(BUILD_DIR)/asm/eff/eff_batfukidashi.o\
	$(BUILD_DIR)/asm/countdown.o\
	$(BUILD_DIR)/asm/battle/ac/ac_stick_rotate.o\
	$(BUILD_DIR)/asm/battle/ac/ac_button_down.o\
	$(BUILD_DIR)/asm/battle/ac/ac_timing_wide.o\
	$(BUILD_DIR)/asm/battle/battle_break_slot.o\
	$(BUILD_DIR)/asm/nameent.o\
	$(BUILD_DIR)/asm/evt/evt_window.o\
	$(BUILD_DIR)/asm/battle/ac/ac_pendulum_crane_timing.o\
	$(BUILD_DIR)/asm/eff/eff_starpoint.o\
	$(BUILD_DIR)/asm/eff/eff_puniballoon.o\
	$(BUILD_DIR)/asm/eff/eff_peach_fukidashi.o\
	$(BUILD_DIR)/asm/battle/ac/ac_air_gauge.o\
	$(BUILD_DIR)/asm/eff/eff_kemutest.o\
	$(BUILD_DIR)/asm/battle/ac/ac_crane_timing.o\
	$(BUILD_DIR)/asm/eff/eff_starstone.o\
	$(BUILD_DIR)/asm/eff/eff_itemget.o\
	$(BUILD_DIR)/asm/battle/battle_seq_end.o\
	$(BUILD_DIR)/asm/battle/battle_ac_help.o\
	$(BUILD_DIR)/asm/kpa_act.o\
	$(BUILD_DIR)/asm/koopa_motion.o\
	$(BUILD_DIR)/asm/koopa_hit.o\
	$(BUILD_DIR)/asm/eff/eff_pointget.o\
	$(BUILD_DIR)/asm/eff/eff_stageclear.o\
	$(BUILD_DIR)/asm/eff/eff_fall.o\
	$(BUILD_DIR)/asm/eff/eff_levelup.o\
	$(BUILD_DIR)/asm/eff/eff_break.o\
	$(BUILD_DIR)/asm/eff/eff_mobj_broken.o\
	$(BUILD_DIR)/asm/eff/eff_mahojin.o\
	$(BUILD_DIR)/asm/eff/eff_nozle.o\
	$(BUILD_DIR)/asm/eff/eff_mizutama.o\
	$(BUILD_DIR)/asm/eff/eff_minigame.o\
	$(BUILD_DIR)/asm/eff/eff_splash.o\
	$(BUILD_DIR)/asm/eff/eff_treasure_map.o\
	$(BUILD_DIR)/asm/eff/eff_kiss.o\
	$(BUILD_DIR)/asm/eff/eff_funemizu.o\
	$(BUILD_DIR)/asm/evt/evt_yuugijou.o\
	$(BUILD_DIR)/asm/eff/eff_mist.o\
	$(BUILD_DIR)/asm/eff/eff_teresa.o\
	$(BUILD_DIR)/asm/battle/ac/ac_power_gauge.o\
	$(BUILD_DIR)/asm/battle/ac/ac_power_gauge_lv.o\
	$(BUILD_DIR)/asm/battle/sac/sac_bakugame.o\
	$(BUILD_DIR)/asm/battle/ac/ac_signal_timing.o\
	$(BUILD_DIR)/asm/mail_data.o\
	$(BUILD_DIR)/asm/battle/sac/sac_scissor.o\
	$(BUILD_DIR)/asm/battle/sac/sac_zubastar.o\
	$(BUILD_DIR)/asm/battle/ac/ac_gauge_timing.o\
	$(BUILD_DIR)/asm/evt/evt_urouro.o\
	$(BUILD_DIR)/asm/battle/ac/ac_shot_target.o\
	$(BUILD_DIR)/asm/eff/eff_sheep.o\
	$(BUILD_DIR)/asm/eff/eff_batten.o\
	$(BUILD_DIR)/asm/win/winmgr.o\
	$(BUILD_DIR)/asm/battle/ac/ac_gauge_timing2.o\
	$(BUILD_DIR)/asm/eff/eff_naniga.o\
	$(BUILD_DIR)/asm/eff/eff_sandars.o\
	$(BUILD_DIR)/asm/eff/eff_rankup.o\
	$(BUILD_DIR)/asm/eff/eff_irekaeru.o\
	$(BUILD_DIR)/asm/battle/ac/ac_power_gauge_lv2.o\
	$(BUILD_DIR)/asm/eff/eff_scanning.o\
	$(BUILD_DIR)/asm/eff/eff_toiki.o\
	$(BUILD_DIR)/asm/eff/eff_mist2.o\
	$(BUILD_DIR)/asm/eff/eff_particle.o\
	$(BUILD_DIR)/asm/battle/sac/sac_genki.o\
	$(BUILD_DIR)/asm/battle/sac/sac_common.o\
	$(BUILD_DIR)/asm/battle/sac/sac_deka.o\
	$(BUILD_DIR)/asm/eff/eff_ibuki.o\
	$(BUILD_DIR)/asm/battle/sac/sac_muki.o\
	$(BUILD_DIR)/asm/battle/ac/ac_monosiri_target.o\
	$(BUILD_DIR)/asm/battle/sac/sac_suki.o\
	$(BUILD_DIR)/asm/romfont.o\
	$(BUILD_DIR)/asm/seq/seq_e3.o\
	$(BUILD_DIR)/asm/battle/battle_status_icon.o\
	$(BUILD_DIR)/asm/evt/evt_lottery.o\
	$(BUILD_DIR)/asm/eff/eff_mahorn.o\
	$(BUILD_DIR)/asm/eff/eff_spirit.o\
	$(BUILD_DIR)/asm/eff/eff_indirect.o\
	$(BUILD_DIR)/asm/eff/eff_syuryou.o\
	$(BUILD_DIR)/asm/eff/eff_uranoko.o\
	$(BUILD_DIR)/asm/eff/eff_hibashira.o\
	$(BUILD_DIR)/asm/evt/evt_lecture.o\
	$(BUILD_DIR)/asm/eff/eff_number.o\
	$(BUILD_DIR)/asm/eff/eff_laser.o\
	$(BUILD_DIR)/asm/eff/eff_machinegun.o\
	$(BUILD_DIR)/asm/eff/eff_las_mon.o\
	$(BUILD_DIR)/asm/eff/eff_sleep.o\
	$(BUILD_DIR)/asm/eff/eff_energy.o\
	$(BUILD_DIR)/asm/eff/eff_nokotarou.o\
	$(BUILD_DIR)/asm/eff/eff_queen.o\
	$(BUILD_DIR)/asm/eff/eff_queen2.o\
	$(BUILD_DIR)/asm/eff/eff_gonbara_breath.o\
	$(BUILD_DIR)/asm/evt/evt_memcard.o\
	$(BUILD_DIR)/asm/eff/eff_majinai.o\
	$(BUILD_DIR)/asm/eff/eff_mahorn2.o\
	$(BUILD_DIR)/asm/eff/eff_ultra_hammer.o\
	$(BUILD_DIR)/asm/dolphin_lib.o\
	$(BUILD_DIR)/data/ctors.o\
	$(BUILD_DIR)/data/dtors.o\
	$(BUILD_DIR)/data/rodata_2.o\
	$(BUILD_DIR)/data/data_2.o\
	$(BUILD_DIR)/data/bss.o\
	$(BUILD_DIR)/data/sdata_2.o\
	$(BUILD_DIR)/data/sbss_2.o\
	$(BUILD_DIR)/data/sdata2.o\
	$(BUILD_DIR)/data/sbss2.o\