CREATE TABLE IF NOT EXISTS bookings (
id UUID PRIMARY KEY, customer_name TEXT NOT NULL, whatsapp TEXT NOT NULL, email TEXT NOT NULL,
service TEXT NOT NULL, price NUMERIC(10,2) NOT NULL, appointment_date DATE NOT NULL,
appointment_time TIME NOT NULL, status TEXT NOT NULL DEFAULT 'pending', payment_id TEXT,
payment_status TEXT, pix_copy_paste TEXT, pix_qr_base64 TEXT, expires_at TIMESTAMPTZ,
created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(), updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW());
CREATE UNIQUE INDEX IF NOT EXISTS bookings_active_slot ON bookings(appointment_date,appointment_time)
WHERE status IN ('pending','approved');
CREATE INDEX IF NOT EXISTS bookings_payment_idx ON bookings(payment_id);
