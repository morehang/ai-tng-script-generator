import { Controller, UseGuards, Get, Post, Body, Param, Req } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { ScriptGeneratorService } from './script-generator.servi