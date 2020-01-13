package com.example.channel_example

import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity


class TestActivity :FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.example_activity)
    }
}