use bitcraft_macro::event_table;

use crate::messages::components::NotificationSeverity;

#[event_table(name = player_notification_event)]
pub struct PlayerNotificationEvent {
    pub player_entity_id: u64,
    pub message: String,
    pub severity: NotificationSeverity,
}