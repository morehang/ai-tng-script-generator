import { Controller, UseGuards, Get, Post, Body, Param, Req } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { ScriptGeneratorService } from './script-generator.service';
import { ScriptRepository } from './script.repository';

/**
 * Controller for script generation.
 */
@Controller('script-generator')
export class ScriptGeneratorController {
  constructor(
    priva