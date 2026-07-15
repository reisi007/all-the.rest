#!/usr/bin/env bash
set -e
echo "🚀 Synchronisiere all-the.rest via rclone..."
rclone sync dist reisinger.pictures:/all-the.rest --transfers=150 --track-renames --progress
echo "🎉 Upload fuer all-the.rest erfolgreich abgeschlossen!"
