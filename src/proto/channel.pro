/* channel.c */
void ch_logfile(FILE *file);
channel_T *add_channel(void);
void channel_free(channel_T *channel);
void channel_gui_register(channel_T *channel);
void channel_gui_register_all(void);
channel_T *channel_open(char *hostname, int port_in, int waittime, void (*close_cb)(void));
void channel_set_pipes(channel_T *channel, int in, int out, int err);
void channel_set_job(channel_T *channel, job_T *job);
void channel_set_json_mode(channel_T *channel, ch_mode_T ch_mode);
void channel_set_timeout(channel_T *channel, int timeout);
void channel_set_callback(channel_T *channel, char_u *callback);
void channel_set_req_callback(channel_T *channel, char_u *callback, int id);
char_u *channel_get(channel_T *channel);
int channel_collapse(channel_T *channel);
int channel_can_write_to(channel_T *channel);
int channel_is_open(channel_T *channel);
char *channel_status(channel_T *channel);
void channel_close(channel_T *channel);
int channel_save(channel_T *channel, char_u *buf, int len);
char_u *channel_peek(channel_T *channel);
void channel_clear(channel_T *channel);
void channel_free_all(void);
int channel_get_id(void);
void channel_read(channel_T *channel, int which, char *func);
char_u *channel_read_block(channel_T *channel);
int channel_read_json_block(channel_T *channel, int id, typval_T **rettv);
channel_T *channel_fd2channel(sock_T fd, int *whichp);
int channel_send(channel_T *channel, char_u *buf, char *fun);
int channel_poll_setup(int nfd_in, void *fds_in);
int channel_poll_check(int ret_in, void *fds_in);
int channel_select_setup(int maxfd_in, void *rfds_in);
int channel_select_check(int ret_in, void *rfds_in);
int channel_parse_messages(void);
int set_ref_in_channel(int copyID);
ch_mode_T channel_get_mode(channel_T *channel);
/* vim: set ft=c : */
